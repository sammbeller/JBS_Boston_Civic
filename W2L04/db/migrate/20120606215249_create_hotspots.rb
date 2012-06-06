class CreateHotspots < ActiveRecord::Migration
  def change
    create_table :hotspots do |t|
      t.integer :range
      t.integer :number_reports

      t.timestamps
    end
  end
end
