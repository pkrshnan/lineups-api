# frozen_string_literal: true

class AgentsController < ApplicationController
  def index
    agents = Agent.all.includes(:abilities)
    render json: agents
  end

  def show
    agent = Agent.find_by!(name: params[:name].downcase.titlecase)
    render json: agent
  end
end
