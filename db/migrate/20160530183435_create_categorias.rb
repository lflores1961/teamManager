class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
