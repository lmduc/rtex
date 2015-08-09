class ChangeDataInRecordsToJson < ActiveRecord::Migration
  def change
    remove_column :records, :data
    add_column :records, :data, :json
  end
end
