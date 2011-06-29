class AlterQuotesAddTitle < ActiveRecord::Migration
  def self.up
    add_column :quotes, :title, :string
  end

  def self.down
    remove_column :quotes, :title
  end
end
