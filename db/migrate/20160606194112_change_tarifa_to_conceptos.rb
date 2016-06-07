class ChangeTarifaToConceptos < ActiveRecord::Migration
  def change
    change_column :conceptos, :tarifa, :decimal
  end
end
