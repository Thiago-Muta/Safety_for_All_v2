class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reports
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :password, :first_name, :last_name, :cpf, :phone_number, presence: true
  has_one_attached :photo
end
