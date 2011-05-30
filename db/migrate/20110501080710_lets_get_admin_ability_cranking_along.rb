class LetsGetAdminAbilityCrankingAlong < ActiveRecord::Migration
  def self.up
    change_table :customers do |t|
      t.boolean :admin
    end
  end

  def self.down
    change_table :traders do |t|
      t.boolean :admin
    end
  end
end
