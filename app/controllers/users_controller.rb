class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :delete]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(name: params[:user][:name])
        @user.save
        redirect_to @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.delete
        redirect_to users_path
    end

    private
        def set_user
            @user = User.find(params[:id])
        end
end
