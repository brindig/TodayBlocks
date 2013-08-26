class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :block_tower_id
      t.integer :position
      t.string :name
      t.integer :time

      t.timestamps
    end
    add_index :blocks, [:block_tower_id, :position, :name]
  end
end
