class CreateProfessionTraderTable < ActiveRecord::Migration
  def self.up
    create_table :professions_traders, :id => false do |t|
      t.references :profession
      t.references :trader
      t.timestamps
    end
  end

  def self.down
    drop_table :professions_traders
  end
end
