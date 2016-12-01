class Address
  @@address = []
  attr_reader(:type, :address, :city, :state, :zip_code, :country)

  def initialize(attributes)
    @type = attributes.fetch(:type)
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip_code = attributes.fetch(:zip_code)
    @country = attributes.fetch(:country)
  end

  def save
    @@address.push(self)
  end

  def self.all
    @@address
  end

  def self.clear
    @@address = []
  end

end
