class CreateMobMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :attacks do |t|
      t.integer :mob_id
      t.integer :move_id

      t.timestamps
    end
  end
end
