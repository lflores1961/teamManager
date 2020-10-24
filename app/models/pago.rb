class Pago < ApplicationRecord
  validates :concepto, presence: true
  validates :cantidad, numericality: { greater_than: 0, less_than: 10000 }
  belongs_to :jugador, optional: true
end
