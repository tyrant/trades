class AlterImageAddToken < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.string :token
    end
  end

  def self.down
    change_table :images do |t|
      t.remove :token
    end
  end
end
