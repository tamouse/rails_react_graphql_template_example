class Book < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  belongs_to :author

  has_many :notes, as: :noteable

  validates_presence_of :title
end
