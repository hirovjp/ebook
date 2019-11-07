class CreateWordlists < ActiveRecord::Migration[6.0]
  def change
    create_table :wordlists do |t|
      t.integer :category_id
      t.string :language
      t.string :translate_language

      t.timestamps
    end
  end
end
