require('spec_helper')

describe(Stylist) do
  describe(".all") do
    it("starts off with no lists") do
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a stylist by its ID number") do
      test_stylist = Stylist.new({:name => "Barbara hairris", :id => nil})
      test_stylist.save()
      test_stylist2 = Stylist.new({:name => "Anthony Locks", :id => nil})
      test_stylist2.save()
      expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
    end
  end

  describe("#id") do
    it("sets its ID when you save it") do
      stylist = Stylist.new({:name => "Barbara hairris", :id => nil})
      stylist.save()
      expect(stylist.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe("#save") do
    it("lets you save lists to the database") do
      stylist = Stylist.new({:name => "Barbara hairris", :id => nil})
      stylist.save()
      expect(Stylist.all()).to(eq([stylist]))
    end
  end

  describe("#==") do
    it("is the same stylist if it has the same name and id") do
      stylist1 = Stylist.new({:name => "Barbara hairris", :id => 1})
      stylist2 = Stylist.new({:name => "Barbara hairris", :id => 1})
      expect(stylist1).to(eq(stylist2))
    end
  end

  describe("#clients") do
    it("returns an array of clients for each individual stylist") do
      test_stylist = Stylist.new({:name => "Barbara hairris", :id => nil})
      test_stylist.save()
      test_client = Client.new({:name => "Barnie Bullabee", :stylist_id => test_stylist.id()})
      test_client.save()
      test_client2 = Client.new({:name => "Casie Casum", :stylist_id => test_stylist.id()})
      test_client2.save()
      expect(test_stylist.clients()).to(eq([test_client, test_client2]))
    end
  end
end
