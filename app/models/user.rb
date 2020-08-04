class User < ApplicationRecord
  has_secure_password

  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  validates_presence_of :username,:web_url
  validates_uniqueness_of :username

  # def self.search_by(search_term)
  #   where("web_url LIKE :search_term", search_term: "%#{search_term.down}%")
  # end
end
