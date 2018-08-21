class Note < ApplicationRecord
  belongs_to :noteable, polymorphic: true

  validates_precense_of :body

end
