class Categoria < ActiveRecord::Base
  validates :name, 
    presence: true, 
    length: { minimum: 3, maximum: 15 }, 
    uniqueness: true
end
