require_relative 'red_green/plugin'
require_relative 'red_green/version'
require_relative 'red_green_plugin'

module Minitest
  module RedGreen
    extend self
    attr_accessor :disabled
  end
end
