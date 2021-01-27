class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|

      t.string  :title,       null: false
      t.text    :material,    null: false
      t.text    :making,      null: false
      t.text    :point,       null: false
      t.integer :category_id  null: false
      t.timestamps
    end
  end
end
