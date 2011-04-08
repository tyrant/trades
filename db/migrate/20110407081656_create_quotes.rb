class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.text :content
      t.references :trader
      t.references :job

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
