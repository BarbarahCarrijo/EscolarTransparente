class CreateTravelRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :travel_routes do |t|
      t.string :depparture
      t.string :arrival
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
