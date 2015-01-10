class Nemo
  AI_KEY = "sbbfya2p"
  DIRECTIONS = %w(Stay North South East West)

  def next_move
    DIRECTIONS.sample
  end
end
