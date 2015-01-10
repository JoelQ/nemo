require 'httparty'

module Vindinium
  class Game
    def initialize(data)
      @data = data
    end

    def ended?
      @data["game"]["turn"] == @data["game"]["maxTurns"]
    end

    def command_url
      @data["playUrl"]
    end

    def viewing_url
      @data["viewUrl"]
    end
  end
end
