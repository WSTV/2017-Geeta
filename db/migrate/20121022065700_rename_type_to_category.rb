class RenameTypeToCategory < ActiveRecord::Migration
  def up
    rename_column :concepts, :type, :category
  end

  def down
    rename_column :concepts, :category, :type
  end
end
