class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  COLORS = ["white", "black", "brown", "orange", "yellow", "grey", "green"]

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: { in: ["M", "F"], message: "Has to be M or F"}
  validates :color, inclusion: { in: COLORS }


  def age
    time_ago_in_words(birth_date)
  end
end