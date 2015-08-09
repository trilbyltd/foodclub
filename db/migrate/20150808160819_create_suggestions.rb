class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name
      t.integer :votes
      t.string :foursquare_id
      t.string :user_id
      t.boolean :visited

      t.timestamps null: false
    end
  end
end
