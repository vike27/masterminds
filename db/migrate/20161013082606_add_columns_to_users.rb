class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :short_bio, :string
    add_column :users, :occupation, :string
    add_column :users, :employer, :string
    add_column :users, :twitter, :string
  end
end
