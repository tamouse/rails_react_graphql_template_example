class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.references :noteable, polymorphic: true, index: true
      t.text :body
      t.boolean :private, null: false, default: false

      t.timestamps
    end
  end
end
