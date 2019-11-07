class CreateLearnwordlists < ActiveRecord::Migration[6.0]
  def change
    create_table :learnwordlists do |t|
      t.integer :user_id
      t.integer :wordlist_id

      t.timestamps
    end
  end
end
