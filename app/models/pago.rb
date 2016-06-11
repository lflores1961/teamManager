class Pago < ActiveRecord::Base
  validates :concepto, presence: true
  validates :cantidad, numericality: { greater_than: 0, less_than: 10000 }
  belongs_to :jugador
end
