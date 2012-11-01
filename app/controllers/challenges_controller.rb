class ChallengesController < ApplicationController
  def new
    @challenge = Challenge.new
    @challenges = Challenge.all()
  end

  def create
    @challenge = Challenge.new(params[:challenge])
    
    if @challenge.save
      redirect_to challenges_path    
    else
      render 'new'
    end
  end
  
  def index
    @challenges = Challenge.all()
    
    respond_to do |format|
        format.html 
        format.json { render :json => @challenges }
        format.js { render_json @challenges.to_json }
    end            
  end
  
  def show
    @challenge = Challenge.find(params[:id])
    @submissions = @challenge.submissions
  end
  
  def edit
    @challenge = Challenge.find(params[:id])
    @challenges = Challenge.all()
  end
  
  def update
    @challenge = Challenge.find(params[:id])    
    
    if @challenge.update_attributes(params[:challenge])    
      redirect_to challenges_path    
    else
      render 'edit'
    end 
  end
  
  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenges_path
  end
end
