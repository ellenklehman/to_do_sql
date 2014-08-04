require 'pg'

class List

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(another_list)
    self.name == another_list.name
  end

  def self.all
    results = DB.exec("SELECT * FROM lists;")
    lists = []
    results.each do |list|
      name = list['name']
      lists << List.new(name)
    end
    lists
  end

  def save
    DB.exec("INSERT INTO lists (name) VALUES ('#{name}');")
  end

end
