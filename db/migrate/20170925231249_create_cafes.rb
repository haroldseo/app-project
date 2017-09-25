class CreateCafes < ActiveRecord::Migration[5.1]
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :hours
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
