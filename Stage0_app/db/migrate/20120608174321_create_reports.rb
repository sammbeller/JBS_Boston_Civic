class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :time

      t.timestamps
    end
  end
end
