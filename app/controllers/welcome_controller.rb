class WelcomeController < ApplicationController

  def index
  	@q = Work.search(params[:q])
  	@persons = @q.result(distinct: true)
  end


  def aprove
  	@user = User.find(params[:id])
  	@user.update(:approve => true)
  	redirect_to root_path
  end

end
