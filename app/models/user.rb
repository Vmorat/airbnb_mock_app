class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :flats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :received_bookings, through: :flats, source: :bookings
  # New fields
  validates :first_name, presence: true
  validates :last_name, presence: true
  # attr_accessor :first_name
end
