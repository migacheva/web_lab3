class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :text, null: false
      t.boolean :priority, default: false, null: false

      t.timestamps
    end
  end
end
