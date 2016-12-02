class Contact
  @@contacts = []
  attr_reader(:first_name, :last_name, :job_title, :company, :id, :contact_addresses, :contact_emails, :contact_phones)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @id = @@contacts.length + 1
    @contact_addresses = nil
    @contact_emails = nil
    @contact_phones = nil
  end

  def save
    @@contacts.push(self)
  end

  def self.all
    @@contacts
  end

  def add_address(address)
    @contact_addresses = address
  end

  def add_email(emails)
    @contact_emails = emails
  end

  def add_phone(phones)
    @contact_phones = phones
  end

  def self.clear
    @@contacts = []
  end

  def self.find(id)
    found_contact = nil
    @@contacts.each { |contact| contact.id == id ? found_contact = contact : false}
    found_contact
  end
end
