class AddPublicBooleanToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.boolean :public
    end
  end

  def self.down
    change_table :jobs do |t|
      t.remove :public
    end
  end
end
