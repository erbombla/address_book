class Address
  @@address = []
  attr_reader(:address, :city, :state, :zip_code, :country)

  def initialize(attributes)
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip_code = attributes.fetch(:zip_code)
    @country = attributes.fetch(:country)
  end

  def save(type)
    if type == 'home'
      @@address[0] = self
    elsif type == 'other'
       @@address[1] = self
    elsif type == 'PO'
      @@address[2] = self
    end

  end

  def self.all
    @@address
  end

  def self.clear
    @@address = []
  end

end
