class Vote < ActiveRecord::Base

  # validates_uniqueness_of :user_id, :scope => :suggestion_id
  # validates_uniqueness_of :suggestion_id, :scope => :user_id

  belongs_to :suggestion
  # belongs_to :user

end
