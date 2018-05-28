class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :device_id
      t.string :name
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
