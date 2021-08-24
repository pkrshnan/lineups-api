class AgentsController < ApplicationController
  def index
    agents = Agent.all.includes(:abilities)
    render json: agents
  end
end
