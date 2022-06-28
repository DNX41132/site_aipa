class CreateAdoptions < ActiveRecord::Migration[7.0]
  def change
    create_table :adoptions do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.text :details

      t.timestamps
    end
  end
end
