require('spec_helper')

describe(Client) do

  describe(".all") do
    it("returns all the instances of class- is empty at first") do
      expect(Client.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_client = Client.new({:name => "Barnie Frank", :stylist_id => 1})
      test_client.save()
      expect(Client.all()).to(eq([test_client]))
    end
  end

  describe("#stylist_id") do
    it("lets you read the list ID out") do
      test_client = Client.new({:name => "Barnie Frank", :stylist_id => 1})
      expect(test_client.stylist_id()).to(eq(1))
    end
  end

  describe("#==") do
    it("is the same task if it has the same name and list ID- i.e. 'Squeakers'") do
      task1 = Client.new({:name => "Barnie Frank", :stylist_id => 1})
      task2 = Client.new({:name => "Barnie Frank", :stylist_id => 1})
      expect(task1).to(eq(task2))
    end
  end

end
