class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :flats, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :received_bookings, through: :flats, source: :bookings, dependent: :destroy
  # New fields
  validates :first_name, presence: true
  validates :last_name, presence: true

  # New method
  def booking_requests_to_owned_flats
    owned_flats = self.flats
    Booking.where(flat_id: owned_flats.pluck(:id))
  end
end
