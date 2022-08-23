class AddImageLinkToAnimeCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :anime_characters, :image_link, :string
  end
end
