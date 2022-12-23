class UsersController < ApplicationController

    def new
        @user = User.new
        render :new
    end

    def create
        render :create
        # @user = User.new(user_params)
        # if @user.save
        #     login!(@user)
        #     redirect_to subs_url
        # else
        #     redirect_to new_user_url
        # end
    end

    def show
        @user = User.find_by(params[:id])
        if @user
            render :show
        else
            redirect_to subs_url
        end
    end

    def edit
        
    end

    def update
        
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end

end
