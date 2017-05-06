class CreateIntervalMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :interval_masters do |t|
      t.references :season, foreign_key: true
      t.references :universe, foreign_key: true
      t.string :name
      t.integer :order
      t.boolean :finished

      t.timestamps
    end
  end
end
