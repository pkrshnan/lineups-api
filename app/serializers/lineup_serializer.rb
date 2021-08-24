# frozen_string_literal: true

class LineupSerializer < ActiveModel::Serializer
  attributes :id, :location, :description, :author, :link, :map, :ability

  def map
    object.map.name
  end

  def ability
    object.ability.name
  end
end
