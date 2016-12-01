class Email
  @@email_addresses = []
  attr_reader(:email_address)

  def initialize(attributes)
    @email_address = attributes.fetch(:email_address)
  end

  def save(type)
    if type == 'personal'
      @@email_addresses[0] = self
    elsif type == 'work'
      @@email_addresses[1] = self
    elsif type == 'other'
      @@email_addresses[2] = self
    elsif type == 'other2'
      @@email_addresses[3] = self
    end
  end

  def self.all
    @@email_addresses
  end

  def self.clear
    @@email_addresses = []
  end
end
