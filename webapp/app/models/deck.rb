class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :card_assignments, :class_name => 'CardAssignment'
end
