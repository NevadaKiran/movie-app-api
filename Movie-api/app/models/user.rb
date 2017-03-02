class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :movies
  validates :name, presence: true, uniqueness: true

end
