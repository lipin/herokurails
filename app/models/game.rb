class Game < ActiveRecord::Base
  enum kind: [ :holdem, :gin, :rummy ]
  validates_presence_of :room
  validates_presence_of :min_players
  validates_presence_of :max_players
  validates :min_players, numericality: { less_than_or_equal_to: :max_players, message: "must be less than, or equal to, Max players!" }
end