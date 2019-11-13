class RemoveAnswerFromLessons < ActiveRecord::Migration[6.0]
  def change

    remove_column :lessons, :answer, :string
  end
end
