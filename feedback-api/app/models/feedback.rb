class Feedback < ActiveRecord::Base
  validates :candidate_name, :position,  presence: true
  validates :isCooper, inclusion: { in: [true,false] }
end
