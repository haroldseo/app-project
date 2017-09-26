class AddPublishedToCafes < ActiveRecord::Migration[5.1]
  def change
    add_column :cafes, :published, :boolean
  end
end
