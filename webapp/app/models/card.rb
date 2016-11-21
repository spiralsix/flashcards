class Card < ActiveRecord::Base
  has_many :card_assignments, :class_name => 'CardAssignment'

end
