require 'spec_helper'

describe :Lists do

  describe :initalize do
    it "should initialize with a name" do
      list = List.new("Free Time")
      list.should be_an_instance_of List
    end

    it "tells you its name" do
      list = List.new("Work Time")
      list.name.should eq "Work Time"
    end

    it "is the same list if it has the same name" do
      list1 = List.new('Epicodus stuff')
      list2 = List.new('Epicodus stuff')
      list1.should eq list2
    end
  end

  describe :all do
    it "starts off with no lists" do
      List.all.should eq []
    end
  end

  describe :save do
    it "lists all of the lists created" do
      list1 = List.new("Eat")
      list2 = List.new("Sleep")
      list1.save
      list2.save
      List.all.should eq ([list1, list2])
    end
  end

end
