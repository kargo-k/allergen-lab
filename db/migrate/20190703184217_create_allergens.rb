class CreateAllergens < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_users do |t|
      t.integer :ingredient_id
      t.integer :user_id
    end
  end
end
