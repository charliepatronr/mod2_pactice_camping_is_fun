class SignUpsController < ApplicationController

    def new
        @signup = SignUp.new()
    end

    def create
        byebug
        @sign_up = SignUp.new(signup_params(:activity_id, :camper_id, :time))
        if @sign_up.valid?
            @sign_up.save
            redirect_to camper_path(params[:sign_up][:camper_id])
        else 
            flash[:errors] = @sign_up.errors.full_messages
            redirect_to new_sign_up_path
        end
    end


    private

    def signup_params(*args)
        params.require(:sign_up).permit(*args)
    end

end
