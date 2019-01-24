require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)

require_relative 'lib/boardcase'
require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/game'