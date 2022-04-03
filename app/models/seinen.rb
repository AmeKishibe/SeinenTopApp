class Seinen < ApplicationRecord
  has_many :notes
  def to_s
    "#{title}"
  end
end
