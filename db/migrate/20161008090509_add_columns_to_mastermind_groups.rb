class AddColumnsToMastermindGroups < ActiveRecord::Migration
  def change
    add_column :mastermind_groups, :topic, :string
    add_column :mastermind_groups, :date, :date
  end
end
