# frozen_string_literal: true

class MapsController < ApplicationController
  def index
    render json: Map.all
  end
end
