class ChangePublisherFormationDataTypeFromStringToDate < ActiveRecord::Migration[6.1]
  def change
    change_column :publishers, :founded, :date
  end
end
