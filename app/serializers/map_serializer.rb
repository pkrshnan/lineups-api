# frozen_string_literal: true

class MapSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
end
