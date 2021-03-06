class CreateTraders < ActiveRecord::Migration
  def self.up
    create_table :traders do |t|
      t.string :login
      t.string :password
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :traders
  end
end
