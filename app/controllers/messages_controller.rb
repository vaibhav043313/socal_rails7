class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_channel, only: %i[create]
  def create
    channel.messages.create(message_params)
    render partial: 'messages/form'
    # redirect_to channel
  end

  private

  def set_channel
    @channel = Channel.find(params[:channel_id])
  end

  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
