class Section < ActiveRecord::Base
  has_many :lessons
  belongs_to :chapter
  validates :name, :number, :presence => true
end
