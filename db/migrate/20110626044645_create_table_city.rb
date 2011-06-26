class CreateTableCity < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
      t.float :lat
      t.float :lng
    end
  end

  def self.down
    drop_table :cities
  end
end
