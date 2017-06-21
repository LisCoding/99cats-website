class Cat < ApplicationRecord #model how we interact with our data
  CAT_COLORS = %w(black yellow gray brown white)
  validates :birth_date, presence: true
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true, inclusion: CAT_COLORS
  validates :sex, presence: true, inclusion: %w(F M)

  has_many :cat_rental_requests,
    primary_key: :id, 
    foreign_key: :cat_id,
    class_name: :CatRentalRequest
end
