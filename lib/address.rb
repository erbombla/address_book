class Address
  attr_reader(:type, :address, :city, :state, :zip_code, :country)

  def initialize(attributes)
    @type = attributes.fetch(:type)
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip_code = attributes.fetch(:zip_code)
    @country = attributes.fetch(:country)
  end

end
