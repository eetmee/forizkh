class CreateAs < ActiveRecord::Migration
  def change
    create_table :as do |t|
      t.string :name

      t.timestamps
    end
  end
end
