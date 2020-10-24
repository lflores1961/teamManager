class CreateConceptos < ActiveRecord::Migration[4.2]
  def change
    create_table :conceptos do |t|
      t.string :name
      t.float :tarifa

      t.timestamps null: false
    end
  end
end
