class ProfilesController < ApplicationController
  def index

  end

  def new
  	@profile = Profile.new
  end

  def create

  	@profile = Profile.new(profile_params)
  	if @profile.save
    	flash[:notice] = 'New Profile is created'
    	redirect_to root_path
	else
		render 'new'
	end	

  end	

  def edit
     @profile = Profile.find(params[:id])
  end


  def update

  	@profile = Profile.find(params[:id])
  	if @profile.update(profile_params)
    	flash[:notice] = 'Profile is updated'
    	redirect_to root_path
	else
		render 'new'
	end	
  end


  def index

  	@profile = Profile.all

  end	

  def destroy
 @profile = Profile.find(params[:id])
 @profile.destroy

 flash[:notice] = 'profile is deleted'
 redirect_to root_path

  end






private

def profile_params

	params.require(:profile).permit(:profiles_id, :first_name, :last_name, :email)

end


end
