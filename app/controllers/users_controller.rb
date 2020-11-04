class UsersController < ApplicationController
  before_action :authorized, only: [:keep_logged_in]


  def login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        wristband_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: wristband_token
        }

    else
        render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
    end
end
  


  # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?
        wristband_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: wristband_token
        }
    else
        render json: {error: "INVALID USER"}, status: 422
    end
end



def keep_logged_in
  # @user exists here because of the before_action
  wristband_token = encode_token({user_id: @user.id})

  render json: {
      user: UserSerializer.new(@user), 
      token: wristband_token
  }
end


  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end



private

def user_params
  # params = {username: "", password: "", user: {username: ""}}
  # Don't use `require` here
  params.permit(:username, :password)
end




  



    
    



    



