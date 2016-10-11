class Feedback < ActiveRecord::Base
  validates :candidate_name, :position,  presence: true
  validates :hire, inclusion: { in: [true,false] }
end
