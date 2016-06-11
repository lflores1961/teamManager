class Jugador < ActiveRecord::Base
  validates :nombre, presence: true
  validates :numero, numericality: { greater_than: -1, less_than: 100 }
  validates :categoria, presence: true
  has_many :pagos
end
