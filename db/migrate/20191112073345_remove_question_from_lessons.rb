class RemoveQuestionFromLessons < ActiveRecord::Migration[6.0]
  def change

    remove_column :lessons, :question, :string
  end
end
