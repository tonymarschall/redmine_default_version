class AddDefaultVersionToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :default_version_id, :integer, :default => nil
  end

  def self.down
    remove_column :projects, :default_version_id
  end
end
