class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :lesson_id
      t.string :point

      t.timestamps
    end
  end
end
