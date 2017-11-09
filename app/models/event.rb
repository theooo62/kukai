class Event < ActiveRecord::Base
  has_many :user, through: :event_users
  has_many :event_users
end
