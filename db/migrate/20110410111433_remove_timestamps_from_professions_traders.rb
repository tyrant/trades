class RemoveTimestampsFromProfessionsTraders < ActiveRecord::Migration
  def self.up
    change_table :professions_traders do |t|
      t.remove :created_at
      t.remove :updated_at
      t.remove :id
    end
  end

  def self.down
    change_table :professions_traders do |t|
      #t.integer :id 
      #t.timestamps
    end
  end
end
