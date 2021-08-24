# frozen_string_literal: true

class Ability < ApplicationRecord
  enum ability_type: {
    passive: 0,
    basic: 1,
    signature: 2,
    ultimate: 3
  }

  belongs_to :agent

  has_many :lineups
end
