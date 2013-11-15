class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
