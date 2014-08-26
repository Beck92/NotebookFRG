class CreateBloknots < ActiveRecord::Migration
  def change
    create_table :bloknots do |t|
      t.string :NameOfBkoknot

      t.timestamps
    end
  end
end
