class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :desc
      t.integer :power

      t.timestamps
    end
  end
end
