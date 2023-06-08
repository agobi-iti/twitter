class User < ApplicationRecord
  has_many :users
  belongs_to :timeline
end
