class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :immat
      t.string :status
      t.float :lat
      t.float :lng
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
