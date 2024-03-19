class CreateBusinessLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :business_locations do |t|
      t.string :name
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
