class User < ActiveRecord::Base
  attr_accessible :name, :recent_latitude, :recent_logitude, :age_range, :location, :gender
  validates :uid, presence: true, uniqueness: true
  validates :oauth_token, presence: true
  has_many :user_places
  has_many :places, through: :recommendations
  has_many :checkins
  has_many :user_likes
  has_many :recommendations
end