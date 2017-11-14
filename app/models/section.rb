class Section < ActiveRecord::Base
  validates :name, :number, :presence => true 
end
