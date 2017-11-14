class Lesson < ActiveRecord::Base
  belongs_to :section
  
  validates :name, :number, :text, :presence => true
end
