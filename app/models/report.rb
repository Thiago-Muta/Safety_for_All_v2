class Report < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  reverse_geocoded_by :latitude, :longitude
  before_validation :reverse_geocode, if: :will_save_change_to_latitude?
  has_many :reviews, dependent: :destroy
  belongs_to :user
  validates :description, :category, :danger_level, :address, presence: true
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
    when 'Utilização de Drogas em via Pública'
      'drogaspublicas.jpg'
    when 'Furto'
      'furto.jpg'
    when 'Assalto com arma de fogo'
      'assalto.jpg'
    when 'Panico'
      'panico.jpg'
    else
      'noimage.jpg'
    end
  end
end
