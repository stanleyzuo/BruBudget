class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.string :name
      t.string :price

      t.timestamps null: false
    end
  end
end
