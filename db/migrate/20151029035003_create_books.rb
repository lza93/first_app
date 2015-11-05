class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :year
      t.string :term
      t.string :department
      t.string :coursenumber
      t.string :coursesection
      t.string :required_textbook

      t.timestamps null: false
    end
  end
end
