class SamplesController < ApplicationController 
skip_before_action :verify_authenticity_token, :only => [:inbound_web_hook]

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
		# puts params

raw_response_object = params['_json'][0]['msys']['relay_message']
50.times do 
print '**' 
end
puts raw_response_object
50.times do 
print '**' 
end


		respond_to do |format|
			format.html {head :ok, content_type: "text/html"}
			format.json {head :ok}
			format.xml  {head :ok}
		end
	end
	
private
	def user_params
	params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end




