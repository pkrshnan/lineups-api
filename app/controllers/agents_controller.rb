# frozen_string_literal: true

class AgentsController < ApplicationController
  def index
    agents = Agent.all.includes(:abilities)
    render json: agents
  end

  def show
    agent = Agent.find(params[:id])
    render json: agent
  end
end
