class CatRentalRequest < ApplicationRecord
  

  STATUS = ["PENDING", "APPROVED", "DENIED"]

  validates :cat_id, :start_date, :end_date, :status, presence: true
  
  validates :status, inclusion: { in: STATUS }

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: 'Cat'

  def overlapping_requests
    CatRentalRequest.where(:start_date => self.start_date..self.end_date)
  end
  
end