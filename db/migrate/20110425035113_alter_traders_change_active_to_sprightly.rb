class AlterTradersChangeActiveToSprightly < ActiveRecord::Migration

  # Turns out 'active' can't be used to indicate whether a Trader has been activated or not,
  # as 'active?' is a fairly fundamental ActiveRecord database connection method. I'm using something
  # which should have very little chance of being used already.
  def self.up
    change_table :traders do |t|
      t.remove :active
      t.boolean :sprightly
    end
  end

  def self.down
    change_table :traders do |t|
      t.remove :sprightly
      t.boolean :active
    end
  end
end
