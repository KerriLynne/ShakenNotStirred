class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :cocktail_id
      t.integer :user_id

      t.timestamps
    end
  end
end
