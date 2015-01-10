require 'httparty'

module Vindinium
  class Game
    TRAINING_URL = "http://vindinium.org/api/training".freeze

    def self.create_training(ai_key)
      response = HTTParty.post "#{TRAINING_URL}?key=#{ai_key}"
      new(response)
    end

    def initialize(data)
      @data = data
    end
  end
end
