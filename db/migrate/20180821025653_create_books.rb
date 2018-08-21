class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :user, foreign_key: true
      t.belongs_to :author, foreign_key: true
      t.string :isbn
      t.date :purchased_on
      t.date :finished_reading_on
      t.integer :rating

      t.timestamps
    end
  end
end
