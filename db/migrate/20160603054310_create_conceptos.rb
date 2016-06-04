class CreateConceptos < ActiveRecord::Migration
  def change
    create_table :conceptos do |t|
      t.string :name
      t.float :tarifa

      t.timestamps null: false
    end
  end
end
