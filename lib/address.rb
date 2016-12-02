class Address
  @@address = []
  attr_reader(:address)

  def initialize(attributes)
    @address = attributes.fetch(:address)
    # @city = attributes.fetch(:city)
    # @state = attributes.fetch(:state)
    # @zip_code = attributes.fetch(:zip_code)
    # @country = attributes.fetch(:country)
  end

  def save_home
    @@address[0] = @address
  end

  def save_other
    @@address[1] = @address
  end

  def save_po
    @@address[2] = @address
  end

  def self.all
    @@address
  end

  def self.clear
    @@address = []
  end

end
