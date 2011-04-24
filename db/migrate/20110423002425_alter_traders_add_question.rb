class AlterTradersAddQuestion < ActiveRecord::Migration
  def self.up
    change_table :traders do |t|
      t.text :question
    end
  end

  def self.down
    change_table :traders do |t|
      t.remove :question
    end
  end
end
