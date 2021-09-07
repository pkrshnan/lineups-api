# frozen_string_literal: true

class AbilitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :has_lineups, :ability_type

  def ability_type
    object.ability_type.upcase
  end
end
