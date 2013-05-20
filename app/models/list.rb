class List < ActiveRecord::Base
  has_many :tasks
  accepts_nested_attributes_for :tasks
  validates_presence_of :title
end
