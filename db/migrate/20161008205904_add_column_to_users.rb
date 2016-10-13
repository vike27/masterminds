class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :linkedin, :text
  end
end
