class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: { in: ["M", "F"], message: "Has to be M or F"}
  validates :color, inclusion: { in: ["white", "black", "brown", "orange", "yellow", "grey", "green"]}


  def age
    time_ago_in_words(birth_date)
  end
end