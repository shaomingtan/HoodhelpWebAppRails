
class WebAppController < ApplicationController
  def sf
  end

  def mv
    @challenge = Challenge.find(params[:id])
    @challenges = Challenge.all()
  end

  def disrupt
  end

  def pa
  end

  def sv
  end
end
