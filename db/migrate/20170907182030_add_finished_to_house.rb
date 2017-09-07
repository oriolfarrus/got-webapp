class AddFinishedToHouse < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :finished, :boolean
  end
end
