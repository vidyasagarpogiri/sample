class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :brand
      t.float :price

      t.timestamps
    end
  end
end
