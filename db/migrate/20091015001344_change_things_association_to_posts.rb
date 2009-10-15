class ChangeThingsAssociationToPosts < ActiveRecord::Migration
  def self.up
    remove_column :things, :post_id
    add_column :posts, :thing_id, :integer
  end

  def self.down
    remove_column :posts, :thing_id
    add_column :things, :post_id, :integer
  end
end
