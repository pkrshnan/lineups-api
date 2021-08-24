# frozen_string_literal: true

class AgentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :role, :abilities

  def role
    object.role.upcase
  end

  def abilities
    ActiveModelSerializers::SerializableResource.new(object.abilities, each_serializer: AbilitySerializer)
  end
end
