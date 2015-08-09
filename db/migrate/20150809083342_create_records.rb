class CreateRecords < ActiveRecord::Migration
  def change
    execute 'CREATE EXTENSION hstore'

    create_table :records do |t|
      t.integer :problem_id
      t.hstore :data

      t.timestamps null: false
    end
    add_index :records, :problem_id
  end
end
