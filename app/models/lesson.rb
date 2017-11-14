class Lesson < ActiveRecord::Base
  validates :name, :number, :text, :presence => true
end
