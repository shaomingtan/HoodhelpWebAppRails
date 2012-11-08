
class StaticPagesController < ApplicationController
  
  def home    
	@user = User.new
  end

  def aboutus
  end
  
end
