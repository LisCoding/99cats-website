class Cat < ApplicationRecord #model how we interact with our data
  CAT_COLORS = %w(black yellow gray brown white)
  validates :birth_date, presence: true
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true, inclusion: CAT_COLORS
  validates :sex, presence: true, inclusion: %w(F M)


end
