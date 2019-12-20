class MessagesController < InheritedResources::Base

  private

    def message_params
      params.require(:message).permit(:name, :email, :phone_number, :message)
    end

end
