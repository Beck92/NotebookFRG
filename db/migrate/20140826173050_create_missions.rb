class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.boolean :Status
      t.string :Challenge
      t.integer :Bloknot_id

      t.timestamps
    end
  end
end
