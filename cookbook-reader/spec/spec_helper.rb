
require 'rubygems'
require 'bundler/setup'
require 'fakefs/safe'


require_relative '../lib/cookbook-reader/options'
require_relative '../lib/cookbook-reader/parser'

['contexts'].each do |dir|
  Dir[File.expand_path(File.join(File.dirname(__FILE__),dir,'*.rb'))].each {|f| require f}
end
