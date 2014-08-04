require 'pg'

class Task

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    database = PG.connect({:dbname => 'to_do'})
    results = database.exec("SELECT * FROM tasks;")
    tasks = []
    results.each do |result|
      name = result['name']
      tasks << Task.new(name)
    end
    tasks
  end

  def save
    database = PG.connect({:dbname => 'to_do'})
    database.exec("INSERT INTO tasks (name) VALUES ('#{name}');")
  end

  def ==(another_task)
    self.name == another_task.name
  end
end

