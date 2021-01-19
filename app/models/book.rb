class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  with_options presence: true do
    validates :name
    validates :text
    validates :image
  end

  validates :genre_id, numericality: { other_than: 1, message: 'Select' }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
