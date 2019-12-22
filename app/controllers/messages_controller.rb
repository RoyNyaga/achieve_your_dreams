class MessagesController < InheritedResources::Base

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)
		if @message.valid?
			@message.save
			flash[:success] = "Your message has been successfully sent, we will get back to you as soon as possible"
			redirect_to new_message_path
		else
			render "messages/new"
		end
	end 

  private

    def message_params
      params.require(:message).permit(:name, :email, :phone_number, :message)
    end

end
