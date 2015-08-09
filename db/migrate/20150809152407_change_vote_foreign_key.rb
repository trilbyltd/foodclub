class ChangeVoteForeignKey < ActiveRecord::Migration
  def change
    remove_column :votes, :suggestion_id
    remove_column :votes, :user_id
  end
end
