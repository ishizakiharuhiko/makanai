class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :material
    validates :making
    validates :point

    with_options numericality: { other_than: 1 } do
      validates :category_id
    end
  end
end
