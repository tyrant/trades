class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.integer :mark

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
