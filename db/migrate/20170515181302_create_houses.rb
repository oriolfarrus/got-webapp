class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :motto
      t.references :universe, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
