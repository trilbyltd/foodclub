class Suggestion < ActiveRecord::Base

  validates_uniqueness_of :name, message: "That place has already been submitted"

  has_many :votes, dependent: :destroy

end
