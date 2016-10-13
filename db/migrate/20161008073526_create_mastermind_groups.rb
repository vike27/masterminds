class CreateMastermindGroups < ActiveRecord::Migration
  def change
    create_table :mastermind_groups do |t|

      t.timestamps null: false
    end
  end
end
