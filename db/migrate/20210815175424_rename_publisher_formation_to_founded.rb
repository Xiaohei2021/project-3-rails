class RenamePublisherFormationToFounded < ActiveRecord::Migration[6.1]
  def change
    rename_column :publishers, :formation, :founded
  end
end
