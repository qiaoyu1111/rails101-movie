class Movie < ApplicationRecord
  validates :title, presence: true
  belongs_to :title, presence: true
end
