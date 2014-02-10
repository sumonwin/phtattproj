class CreateTravelfees < ActiveRecord::Migration
  def change
    create_table :travelfees do |t|
      t.integer :userid
      t.string :classname
      t.date :date
      t.integer :travelfee

      t.timestamps
    end
  end
end
