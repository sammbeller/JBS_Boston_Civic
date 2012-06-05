class CreateREports < ActiveRecord::Migration
  def change
    create_table :r_eports do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
