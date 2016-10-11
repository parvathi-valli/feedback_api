class FeedbacksController < ApplicationController
  def create
    var = feedback_params
    skills=params[:feedback][:skill]
    behaviour=params[:feedback][:behaviour]
    sand = params[:feedback]
    @feedback = Feedback.new()
    @feedback.candidate_name = params[:feedback][:candidate_name]
    @feedback.position =  params[:feedback][:position]
    if (validate_position(@feedback.position) == false)
      return render plain: " #{@feedback.position} not in list"
    end
    @feedback.skill =  params[:feedback][:skill]
    @feedback.behaviour=behaviour
    @feedback.additional =  params[:feedback][:additional]
    @feedback.hire =  params[:feedback][:hire]
  

  if @feedback.save
    render plain: "Successfully saved"
  else
    render plain: "Not saved Successfully"
  end

  end
  def index
    @feedback = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

private
  def feedback_params
    params.require(:feedback)
  end

  def validate_position(p)
      @pos = Position.all
      @pos.each do |po|
        puts "aaa #{po.position} value"
          if(p==po.position)
          return true
        end
      end
      return false
   end
end
