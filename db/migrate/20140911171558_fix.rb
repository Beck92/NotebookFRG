class Fix < ActiveRecord::Migration
  def change
  	rename_column :missions, :Bloknot_id, :bloknot_id
  end
end
