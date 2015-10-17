# model for users
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :address, presence: true
  validates :name, presence: true
  validates :type, presence: true
  has_and_belongs_to_many :tags, join_table: :users_tags
  accepts_nested_attributes_for :users_tags

  after_create do
    update_attributes(
      lattitude: current_address_latitude,
      longitude: current_address_longitude
    )
  end

  def current_address_latitude
    current_address_coordinates.try(:first)
  end

  def current_address_longitude
    current_address_coordinates.try(:second)
  end

  def current_address_coordinates
    Geocoder.coordinates(address)
  end
end
