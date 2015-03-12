class MessagesController < ApplicationController
  before_action :get_game

  def index
    @messages = Message.all
  end

  def create
    @user = current_user.email
    @message = @game.messages.create!(message_params)
    # @message = Message.create!(message_params)
    PrivatePub.publish_to("/messages/#{@game.id}", message: @message )

    respond_to do |format|
      format.js  { render file: "games/create.js.erb"}
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def get_game
    @game = Game.find_by_id(params[:game_id])
  end

end