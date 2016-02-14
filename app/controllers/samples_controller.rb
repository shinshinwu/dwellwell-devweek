class SamplesController < ApplicationController 
	def index
	end
	def actionable
					@user = User.new(user_params)
	
	respond_to do |format|
		if @user.save
				log_in @user
				SampleMailer.welcome_email(@user).deliver_now
        format.html { redirect_to :sample, notice: 'assistant was successfully created.' }
        format.json { render :sample, status: :created, location: :root }
		
		else
        format.html { render :sample }
        format.json { render json: @user.errors, status: :unprocessable_entity }

		end
	end
end

	def inbound_web_hook
	end
	
private
	def user_params
	params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end


# 	def create
# 		@user = User.new(user_params)
# 	end
# 	respond_to do |format|
# 		if @user.save
#         format.html { redirect_to :sample_path, notice: 'assistant was successfully created.' }
#         format.json { render :sample_path, status: :created, location: :root }
		
# 		else
#         format.html { render :sample_path }
#         format.json { render json: @user.errors, status: :unprocessable_entity }

# 		end
# end




