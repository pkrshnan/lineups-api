class Agent < ApplicationRecord
  enum role: {
    sentinel: 0,
    controller: 1,
    duelist: 2,
    initiator: 3
  }

  has_many :abilities
end
