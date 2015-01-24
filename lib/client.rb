class Client
  attr_reader(:stylist_id, :name)

  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @stylist_id = attributes[:stylist_id]
  end

  define_singleton_method(:all) do
    returned_clients = DB.exec("SELECT * FROM clients;")
    clients = []
    returned_clients.each() do |client|
      name = client.fetch("name")
      stylist_id = client.fetch("stylist_id").to_i()
      clients.push(Client.new({:name => name, :stylist_id => stylist_id}))
    end
    clients
  end

  define_method(:save) do
    DB.exec("INSERT INTO clients (stylist_id, name) VALUES (#{@stylist_id}, '#{@name}')")
  end

  define_method(:==) do |same_client|
    self.name().==(same_client.name()).&(self.stylist_id().==(same_client.stylist_id()))
  end
end
