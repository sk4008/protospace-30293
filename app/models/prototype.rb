class Prototype < ApplicationRecord
  has_many :comments
  belongs_to :users
  has_one_attached :image

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  validates :content, presence: true, unless: :was_attached?
end