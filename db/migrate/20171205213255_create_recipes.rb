class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :ingredient1
      t.string :ingredient2
      t.string :ingredient3, null: true
      t.string :ingredient4, null: true
      t.string :ingredient5, null: true
      t.string :ingredient6, null: true
      t.string :ingredient7, null: true
      t.string :directions
      t.string :notes, null: true
      t.string :photo, null: true
      t.boolean :public
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
