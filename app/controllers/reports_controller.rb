class ReportsController < ApplicationController
  def index
    @reports = policy_scope(Report).order("created_at DESC")
    @bars = { 0 => '0%', 1 => '20%', 2 => '40%', 3 => '60%', 4 => '80%', 5 => '100%'}
    @category = { 'Acidente de Trânsito'=> 'bg-warning', 'Briga no Trânsito'=> 'bg-success', 'Briga na rua'=> 'bg-success', 'Briga Doméstica na rua'=> 'bg-success', 'Tráfico de Drogas'=> 'bg-info', 'Utilização de Drogas em via Pública'=> 'bg-primary', 'Furto'=> 'bg-warning', 'Assalto com arma de fogo'=> 'bg-danger'}
    @markers = @reports.geocoded.map do |report|
      marker_url = set_marker_color(report)
      {
        lat: report.latitude,
        lng: report.longitude,
        info_window: render_to_string(partial: "reports/info_window", locals: { report: report, bars: @bars, category: @category }),
        image_url: helpers.asset_url(marker_url)
      }
    end
  end

  def show_map
    @reports = policy_scope(Report)
    @bars = { 0 => '0%', 1 => '20%', 2 => '40%', 3 => '60%', 4 => '80%', 5 => '100%' }
    @category = { 'Acidente de Trânsito'=> 'bg-warning', 'Briga no Trânsito'=> 'bg-success', 'Briga na rua'=> 'bg-success', 'Briga Doméstica na rua'=> 'bg-success', 'Tráfico de Drogas'=> 'bg-info', 'Utilização de Drogas em via Pública'=> 'bg-primary', 'Furto'=> 'bg-warning', 'Assalto com arma de fogo'=> 'bg-danger'}

    @properties = @reports.geocoded.map do |report|
      {
        "type": "Feature",
        "properties": { danger: report.danger_level },
        "geometry": {
          "type": "Point",
          "coordinates": [
            report.longitude,
            report.latitude
          ]
        }
      }
    end

    # @markers = [{ lat: '-23.5513982', lng: '-46.6894532' }]

  end

  def show
    @report = Report.find_by(id: params[:id])
    authorize @report
    if @report.nil?
      redirect_to reports_path
    else
      @bars = { 0 => '0%', 1 => '20%', 2 => '40%', 3 => '60%', 4 => '80%', 5 => '100%'}
      @category = { 'Acidente de Trânsito'=> 'bg-warning', 'Briga no Trânsito'=> 'bg-success', 'Briga na rua'=> 'bg-success', 'Briga Doméstica na rua'=> 'bg-success', 'Tráfico de Drogas'=> 'bg-info', 'Utilização de Drogas em via Publica'=> 'bg-info', 'Furto'=> 'bg-warning', 'Assalto com arma de fogo'=> 'bg-danger'}
      @markers = [{
        lat: @report.latitude,
        lng: @report.longitude,
        info_window: render_to_string(partial: "reports/info_window", locals: { report: @report, bars: @bars, category: @category })
      }]
      @reviews = @report.reviews
    end
  end

  def new
    @report = Report.new
    authorize @report
  end

  def create
    @report = Report.new(report_params)
    authorize @report
    @report.user = current_user
    if @report.save
      ActionCable.server.broadcast('reports', { action: 'create', json: @report, partial: render_to_string(partial: 'report', locals: { report: @report })})
      redirect_to reports_path(@report)
    else
      render :new
    end
  end

  def destroy
    @report = Report.find(params[:id])
    authorize @report
    ActionCable.server.broadcast('reports', { action: 'destroy', json: @report })
    @report.destroy
    redirect_to reports_path
  end

  def close
    @report = Report.find(params[:report_id])
    authorize @report
    @report.update!(status: false)
    redirect_to reports_path
  end

  def send_message
    @report = Report.new(user: current_user, description: 'Estou em perigo!', category: 'Panico', danger_level: 5, latitude: params[:latitude], longitude: params[:longitude])
    authorize @report
    if @report.save
      ActionCable.server.broadcast('reports', { action: 'create', json: @report, partial: render_to_string(partial: 'report.html.erb', locals: { report: @report })})
      to = current_user.send_to_phone
      from = ENV['TWILIO_SMS_NUMBER']
      body = "Estou em perigo aqui #{report_url(@report)}"
      TwilioService.new.send_message(body, to, from)
      render json: { message: 'Alerta Enviado!' }
    else
      render json: { message: 'Error!' }
    end
  end

  private

  def set_marker_color(report)
    case report.category
    when 'Acidente de Trânsito'
      return 'orange_pin.png'
    when 'Briga no Trânsito'
      return 'dark_blue_pin.png'
    when 'Briga na rua'
      return 'dark_blue_pin.png'
    when 'Briga Doméstica na rua'
      return 'dark_blue_pin.png'
    when 'Tráfico de Drogas'
      return 'gold_pin.png'
    when 'Utilização de Drogas em via Pública'
      return 'light_blue_pin.png'
    when 'Furto'
      return 'orange_pin.png'
    when 'Assalto com arma de fogo'
      return 'red_pin.png'
    else
      return 'red_pin.png'
    end
  end

  def report_params
    params.require(:report).permit(:description, :category, :danger_level, :address, :photo)
  end

end
