class AddColumnRemoveColumnFromCategory < ActiveRecord::Migration[6.0]
  def change
    
    remove_column :categories, :type, :string
    add_column :categories, :cat_type, :string
  end
end
