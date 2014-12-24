class AddColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :column, :integer
  end
end
