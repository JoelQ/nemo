module Vindinium
  class Api
    TRAINING_URL = "http://vindinium.org/api/training".freeze

    def initialize(ai_key)
      @ai_key = ai_key
    end

    def start_training_game
      response = HTTParty.post "#{TRAINING_URL}?key=#{ai_key}"
      Vindinium::Game.new(response)
    end

    private

    def ai_key
      @ai_key
    end
  end
end
