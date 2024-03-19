class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.references :business_location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
