class CreateBs < ActiveRecord::Migration
  def change
    create_table :bs do |t|
      t.integer :a1_id
      t.integer :a2_id

      t.timestamps
    end
    add_index :bs, :a1_id
    add_index :bs, :a2_id
    add_index :bs, [:a1_id, :a2_id], unique: true
  end
end
