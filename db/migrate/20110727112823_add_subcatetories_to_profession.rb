class AddSubcatetoriesToProfession < ActiveRecord::Migration
  def self.up
    change_table :professions do |t|
      t.integer :parent_id
    end
  end

  def self.down
    change_table :professions do |t|
      t.remove :parent_id
    end
  end
end
