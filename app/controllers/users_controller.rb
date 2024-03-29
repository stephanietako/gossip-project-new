class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
            redirect_to users_path
    else
        render :new
        end
    end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to users_path
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to users_path
end

# private

#   def dog_params
#     params.require(:dog).permit(:name, :?)
#   end

end
