class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.text :comment
      t.string :title

      t.timestamps null: false
    end
  end
end
