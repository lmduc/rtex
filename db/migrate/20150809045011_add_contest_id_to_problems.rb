class AddContestIdToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :contest_id, :integer
    add_index :problems, :contest_id
  end
end
