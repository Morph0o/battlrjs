class CreateMobs < ActiveRecord::Migration[6.0]
  def change
    create_table :mobs do |t|
      t.string :name
      t.string :desc
      t.integer :hp
      t.integer :str
      t.integer :con
      t.string :img

      t.timestamps
    end
  end
end
