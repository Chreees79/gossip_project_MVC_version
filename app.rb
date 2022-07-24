require 'bundler'
require 'csv'
require 'colorize'
Bundler.require

$:.unshift File.expand_path('./../lib/', __FILE__)

require 'routeur'
require 'controller'
require 'gossip'
require 'view'

Routeur.new.perform

