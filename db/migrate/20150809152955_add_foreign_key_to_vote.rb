class AddForeignKeyToVote < ActiveRecord::Migration
  def change
    add_column :votes, :suggestion_id, :integer
    add_foreign_key :votes, :suggestions
  end
end
