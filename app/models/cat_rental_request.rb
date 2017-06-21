class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, presence: true, inclusion: %w(PENDING APPROVED DENIED)

  belongs_to :cat, 
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  # def overlapping_requests
  #
  # end

end
