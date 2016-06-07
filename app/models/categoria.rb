class Categoria < ActiveRecord::Base
  validates :name,
    presence: true,
    length: { minimum: 3, maximum: 20 },
    uniqueness: true
  default_scope -> { order(:name) }
end
