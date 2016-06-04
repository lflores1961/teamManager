class Concepto < ActiveRecord::Base
  validates :name,
    presence: true,
    length: { minimum: 3, maximum: 15 },
    uniqueness: true
  validates :tarifa,
    numericality: { greater_than: 1, less_than: 10000 }
end
