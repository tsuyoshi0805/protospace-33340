class UsersController < ApplicationController
  

  def index

  end

  def new
    @user = User.new 
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
    


  end



  # private
  # def user_params
  #     params.require(:user).permit(:name, :profile, :occupation, :position).merge(user_id: current_user.id)
  # end  

end