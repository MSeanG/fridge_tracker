class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :weight
      t.boolean :vegan
      t.timestamps
    end
  end
end
