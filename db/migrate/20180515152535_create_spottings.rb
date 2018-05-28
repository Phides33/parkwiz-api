class CreateSpottings < ActiveRecord::Migration[5.2]
  def change
    create_table :spottings do |t|
      t.float :lat
      t.float :lng
      t.integer :direction
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
