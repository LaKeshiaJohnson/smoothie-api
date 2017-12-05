class CreateGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :guides do |t|
      t.string :item
      t.string :description

      t.timestamps
    end
  end
end
