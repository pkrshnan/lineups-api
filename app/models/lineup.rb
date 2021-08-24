# frozen_string_literal: true

class Lineup < ApplicationRecord
  belongs_to :map
  belongs_to :ability
end
