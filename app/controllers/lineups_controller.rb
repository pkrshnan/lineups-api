# frozen_string_literal: true

class LineupsController < ApplicationController
  def create
    # Ensure ability and map actually exist, this will throw a 404 if they don't.
    Ability.find(params[:ability_id])
    Map.find(params[:map_id])

    Lineup.create(create_params)
  end

  private

  def create_params
    params.require(:lineup).permit(:ability_id, :map_id, :link, :location, :description, :author).tap do |lineup_params|
      params.require(:ability_id)
      params.require(:map_id)
      params.require(:link)
      params.require(:location)
    end
  end
end
