class RenameGameMakerIdToPublisherId < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :maker_id, :publisher_id
  end
end
