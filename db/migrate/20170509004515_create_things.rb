class CreateThings < ActiveRecord::Migration[5.0]
  def change
    create_table :things do |t|
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
