class AddGenderToAnimeCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :anime_characters, :gender, :string
  end
end
