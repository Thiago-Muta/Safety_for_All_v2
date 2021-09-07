class Report < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :reviews, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  def category_photo
    case self.category
    when 'Acidente de Trânsito'
      'acidente.jpg'
    when 'Briga no Trânsito'
      'brigatransito.jpg'
    when  'Briga Doméstica na rua'
      'brigadomestica.jpg'
    when 'Briga na rua'
      'brigarua.jpg'
    when 'Tráfico de Drogas'
      'traficodedrogas.jpg'
    when 'Utilização de Drogas em via Publica'
      'drogaspublicas.jpg'
    when 'Furto'
      'furto.jpg'
    else 'Assalto com arma de fogo'
      'assalto.jpg'
    end
  end
end

