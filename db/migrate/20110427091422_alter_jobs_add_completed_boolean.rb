class AlterJobsAddCompletedBoolean < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.boolean :completed
    end
  end

  def self.down
    change_table :jobs do |t|
      t.remove :completed
    end
  end
end
