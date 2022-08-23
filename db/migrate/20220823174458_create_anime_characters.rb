class CreateAnimeCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :anime_characters do |t|
      t.string :name
      t.integer :age
      t.string :birthday
      t.string :show

      t.timestamps
    end
  end
end
