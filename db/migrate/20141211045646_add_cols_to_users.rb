class AddColsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :userid, :string
    add_column :users, :name, :string
  end
end
