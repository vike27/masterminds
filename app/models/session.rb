class Session < ActiveRecord::Base
  belongs_to :mastermind_group
  belongs_to :user
end
