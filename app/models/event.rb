class Event < ActiveRecord::Base
  has_many :users, through: :event_users
  has_many :event_users
  # accepts_nested_attributes_for :event_users
  # 他のモデルを一括で更新、保存できるようにするもの
  # ここではeventを保存するのと同時にevent_usersを更新できるようにする?
end
