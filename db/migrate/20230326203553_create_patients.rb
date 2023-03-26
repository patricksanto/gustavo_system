class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender, default: 0
      t.integer :price

      t.timestamps
    end
  end
end
