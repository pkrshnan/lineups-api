# frozen_string_literal: true

class AbilitiesController < ApplicationController
  def lineups
    ability = Ability.find(params[:id])
    map = Map.find(params[:map_id]) if params[:map_id].present?

    lineups = ability.lineups.includes(:map, :ability)
    lineups = lineups.where('location LIKE ?', "%#{params[:query]}%") if params[:query].present?
    lineups = lineups.where(map: map) if map.present?

    render json: lineups
  end
end
