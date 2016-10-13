class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.belongs_to :user, index: true
      t.belongs_to :mastermind_group, index: true
      t.datetime :session_date

      t.timestamps null: false
    end
  end
end
