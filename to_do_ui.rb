require 'pg'
require './lib/lists'
require './lib/tasks'

DB = PG.connect({:dbname => 'to_do'})

def welcome
  puts "YOU HAVE ENTER THE TO DO LIST"
end
