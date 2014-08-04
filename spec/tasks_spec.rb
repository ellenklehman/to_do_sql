require 'spec_helper'

describe :Task do
  describe :initialize do
    it 'is initialized with a name' do
      task = Task.new('drink coffee')
      task.should be_an_instance_of Task
    end

    it 'tells you its name' do
      task = Task.new('take nap')
      task.name.should eq 'take nap'
    end

    it 'is the same task if it has the same name' do
      task1 = Task.new('learn SQL')
      task2 = Task.new('learn SQL')
      task1.should eq task2
    end
  end

  describe :all do
    it 'starts off empty' do
      Task.all.should eq []
    end
  end

  describe :save do
    it 'should save to the input' do
      task = Task.new('draw pictures')
      task1 = Task.new('be happy')
      task.save
      task1.save
      Task.all.should eq [task, task1]
    end
  end
end
