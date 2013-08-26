class CreateBlockTowers < ActiveRecord::Migration
  def change
    create_table :block_towers do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :block_towers, [:user_id, :name]
  end
end
