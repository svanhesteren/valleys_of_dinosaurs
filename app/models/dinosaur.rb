class Dinosaur < ApplicationRecord

  def self.order_by_name
    order(name: :desc)
  end

  def baby?
    return age <= 3
  end

end
