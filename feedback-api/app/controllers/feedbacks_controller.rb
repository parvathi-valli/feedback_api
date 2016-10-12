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
    @feedback.hire =  params[:feedback][:isHire]
    @feedback.isCooper = params[:feedback][:isCooper]

  if @feedback.valid?
    puts "valid"
  else
    puts @feedback.errors.full_messages
  end

  if @feedback.save
    render plain: "Successfully saved"
  else
    render plain: "Not saved Successfully"
  end

  end
  def index
    @feedback =  Feedback.all
    render plain: @feedback.inspect
  end

  def show
    render plain: Feedback.all
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
