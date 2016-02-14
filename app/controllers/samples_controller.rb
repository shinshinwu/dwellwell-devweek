class SamplesController < ApplicationController 
skip_before_action :verify_authenticity_token, :only => [:inbound_web_hook]

	def index
		vendor = Vendor.last
		email_string = '@hello.affordablehousingapp.com'
		@emailstring = vendor.masked_vendor_id + email_string
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
email_object = {}
treated_response_hash = params['_json'][0]['msys']['relay_message']
# 50.times do 
# print '**' 
# end
request_from_email =  treated_response_hash['friendly_from']
email_object['request_from_email'] = request_from_email
# puts request_from_email

# 50.times do 
# print '**' 
# end

msg_subject_txt = treated_response_hash['content']['subject']
email_object['msg_subject_txt'] =msg_subject_txt
# puts msg_subject_txt
# 50.times do 
# print '**' 
# end

msg_body_txt = treated_response_hash['content']['text']
email_object['msg_body_txt'] = msg_body_txt
# puts msg_body_txt
# 50.times do 
# print '**' 
# end

rcpt_from_email = treated_response_hash['rcpt_to']
email_object['rcpt_from_email'] = rcpt_from_email
# puts rcpt_from_email
# 50.times do 
# print '**' 
# end

matching_reg_ex_obj = /^[^\@]*/.match(rcpt_from_email)
masked_from_string = matching_reg_ex_obj.to_s
email_object['masked_from_string'] = masked_from_string
# puts masked_from_string
# 50.times do 
# print '**' 
# end

case
	when masked_from_string.match(/vendor/)
	 #  50.times do 
		# 	print '**' 
		# end
	  puts 'This is a vendor'
	  # prompt find vendor method
	  for_vendor(email_object)
	when masked_from_string.match(/applicant/)
	  puts 'This is an applicant'
		 for_applicant(email_object)
		 #  50.times do 
			# 	print '**' 
			# end
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
	
def for_vendor(inbound__web_hook_object)
	50.times do 
		print '**'
	end
	puts inbound__web_hook_object
end

def for_applicant((inbound__web_hook_object))
	50.times do 
		print '**'
	end
	puts inbound__web_hook_object
end

private
	def user_params
	params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end




