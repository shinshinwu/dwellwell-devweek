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

treated_response_hash = params['_json'][0]['msys']['relay_message']
50.times do 
print '**' 
end
request_from_email =  treated_response_hash['friendly_from']
puts request_from_email

50.times do 
print '**' 
end

msg_subject_txt = treated_response_hash['content']['subject']
puts msg_subject_txt
50.times do 
print '**' 
end

msg_body_txt = treated_response_hash['content']['text']
puts msg_body_txt
50.times do 
print '**' 
end

rcpt_from_email = treated_response_hash['rcpt_to']
puts rcpt_from_email

50.times do 
print '**' 
end

matching_reg_ex_obj = /^[^\@]*/.match(rcpt_from_email)
masked_from_string = matching_reg_ex_obj.to_s
puts masked_from_string
50.times do 
print '**' 
end

case
	when masked_from_string.match(/vendor/)
	  50.times do 
			print '**' 
		end
	  puts 'This is a vendor'
	  # prompt find vendor method
	when masked_from_string.match(/applicant/)
	  puts 'This is an applicant'
		  50.times do 
				print '**' 
			end
	  # prompt find applicant method
	else
	  puts 'dunno bro'
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




