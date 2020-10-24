class ChangeTarifaToConceptos < ActiveRecord::Migration[4.2]
  def change
    change_column :conceptos, :tarifa, :decimal
  end
end
