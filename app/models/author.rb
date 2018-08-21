class Author < ApplicationRecord

  has_many :notes, as: :noteable
  validates_presence_of :name

end
