class Note < ApplicationRecord
  belongs_to :noteable, polymorphic: true

  validates_presence_of :body

end
