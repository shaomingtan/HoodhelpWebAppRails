class SubmissionsController < ApplicationController
  
  def new
    @challenge = Challenge.find(params[:challenge_id])      
    @submission = @challenge.submissions.new
  end
  
  def create
    @submission = Submission.new(params[:submission])
    
    if @submission.save
      respond_to do |format|
          format.html { redirect_to challenge_path(@submission.challenge_id) }
          format.json { render :json => @submission }
      end      
    else
      @error = {"code" => "2"}
      respond_to do |format|
          format.html { render 'new' }
          format.json { render :json => @error }
      end
      
    end
  end
  
  def index
    @challenge = Challenge.find(params[:challenge_id])      
    @submissions = @challenge.submissions
    
    respond_to do |format|
        format.html 
        format.json { render :json => @submissions }
    end                
  end
  
  def destroy
     @submission = Submission.find(params[:id])
     challenge_id = @submission.challenge_id
     @submission.destroy
     redirect_to challenge_path(challenge_id)
   end

end
