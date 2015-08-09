class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :problem_id
      t.hstore :data

      t.timestamps null: false
    end
    add_index :records, :problem_id
  end
end
