class AddLessonIdToWordlists < ActiveRecord::Migration[6.0]
  def change
    add_column :wordlists, :lesson_id, :integer
  end
end
