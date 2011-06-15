class WhackIndexesOnJoinTables < ActiveRecord::Migration
  def self.up
    add_index :professions_traders, [:profession_id, :trader_id], :unique => true, :name => 'by_profession_and_trade'
    add_index :professions_jobs, [:profession_id, :job_id], :unique => true, :name => 'by_profession_and_job'
  end

  def self.down
    remove_index :professions_traders, :by_profession_and_trade
    remove_index :professions_jobs, :by_profession_and_job
  end
end
