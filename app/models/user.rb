class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes

  with_options presence: true do
    validates :name
    validates :profile
    validates :budget
    validates :city
    validates :street
    validates :phone_number, numericality: { only_integer: true }, length: { maximum: 11 }

    with_options numericality: { other_than: 1 } do
      validates :category_id
      validates :prefecture_id
    end
  end
end
