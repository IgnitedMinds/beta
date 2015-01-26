class ProfilesController < AuthController
  def show
  	@user = User.find_by_user_name(params[:id])
  	if @user
  		render action: :show

  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end

  end
end
