class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :question
      t.string :answer
      t.integer :category_id

      t.timestamps
    end
  end
end
