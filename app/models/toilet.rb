class Toilet < ApplicationRecord

  def duration_mins
    (self.out - self.in) / 60
  end
end
