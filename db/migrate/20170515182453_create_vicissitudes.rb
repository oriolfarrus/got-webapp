class CreateVicissitudes < ActiveRecord::Migration[5.0]
  def change
    create_table :vicissitudes do |t|
      t.integer :difficulty
      t.text :status
      t.references :house, foreign_key: true
      t.references :interval_master, foreign_key: true

      t.timestamps
    end
  end
end
