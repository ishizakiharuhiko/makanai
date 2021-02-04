class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to_active_hash :budget
  belongs_to_active_hash :category
  belongs_to_active_hash :prefecture

  has_one_attached :image
  has_many :recipes

  with_options presence: true do
    validates :name
    validates :profile
    validates :city
    validates :street
    validates :phone_number, numericality: { only_integer: true }, length: { maximum: 11 }

    with_options numericality: { other_than: 1 } do
      validates :budget_id
      validates :category_id
      validates :prefecture_id
    end
  end
end
