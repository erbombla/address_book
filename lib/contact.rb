require 'pry'

class Contact
  @@contacts = []
  attr_reader(:first_name, :last_name, :job_title, :company)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
  end

  def save
    @@contacts.push(self)
  end

  def self.all
    @@contacts
  end

  def self.clear
    @@contacts = []
  end

  def self.find(name)
    found_contact = nil
    @@contacts.each { |contact| contact.first_name.downcase == name.downcase ? found_contact = contact : false}
    found_contact
  end
end


# new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
# new_contact.save
#
# p Contact.find('ryan')
