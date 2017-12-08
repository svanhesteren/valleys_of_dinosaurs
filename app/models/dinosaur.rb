class Dinosaur < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :age, length: {maximum: 100_000}, allow_blank: true
  validates :image_url, length: {maximum: 1024}, allow_blank: true

  def self.order_by_name
    order(name: :desc)
  end

  def baby?
    return age <= 3
  end

end
