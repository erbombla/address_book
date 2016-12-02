class Email
  @@email_addresses = []
  attr_reader(:email_address)

  def initialize(attributes)
    @email_address = attributes.fetch(:email_address)
  end

  def save_personal
    @@email_addresses[0] = @email_address
  end

  def save_work
    @@email_addresses[1] = @email_address
  end

  def save_other
    @@email_addresses[2] = @email_address
  end

  def self.all
    @@email_addresses
  end

  def self.clear
    @@email_addresses = []
  end
end
