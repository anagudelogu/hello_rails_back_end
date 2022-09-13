class Api::V1::MessagesController < ApplicationController
  def index
    @greet = Message.find(rand(1..Message.count))

    render json: { greet: @greet.greet }, status: :ok
  end
end
