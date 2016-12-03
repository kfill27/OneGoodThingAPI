class CreateWrittenThings < ActiveRecord::Migration[5.0]
  def change
    create_table :written_things do |t|
      t.text :description

      t.timestamps
    end
  end
end
