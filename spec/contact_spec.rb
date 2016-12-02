require 'rspec'
require 'contact'
require 'address'
require 'email'
require 'phone_number'

describe 'Contact' do
  before do
    Contact.clear
  end
  describe '#first_name' do
    it 'displays first name' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      expect(new_contact.first_name).to eq('Ryan')
    end
  end
  describe '#last_name' do
    it 'displays last name' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      expect(new_contact.last_name).to eq('Back')
    end
  end
  describe '#job_title' do
    it 'displays job title' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      expect(new_contact.job_title).to eq('student')
    end
  end
  describe '#company' do
    it 'displays contacts info' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      expect(new_contact.company).to eq('Epicodus')
    end
  end
  describe '.all' do
    it 'creates an empty array' do
      expect(Contact.all).to eq([])
    end
  end
  describe '#save' do
    it 'saves contact to the contacts array' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      expect(new_contact.save).to eq([new_contact])
    end
  end
  describe '#add_address' do
    it 'adds address to contact' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_contact.add_address(new_address)).to eq(new_address)
    end
  end
  describe '#add_email' do
    it 'adds email to contact' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      new_email = Email.new({:email_address => 'ryanpback@gmail.com'})
      expect(new_contact.add_email(new_email)).to eq(new_email)
    end
  end
  describe '#add_phone' do
    it 'adds phone to contact' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      new_phone = Phone.new({:phone_number => "512-431-9333"})
      expect(new_contact.add_phone(new_phone)).to eq(new_phone)
    end
  end

  describe '.clear' do
    it 'will clear the array' do
      expect(Contact.clear).to eq([])
    end
  end
  describe '.find' do
    it 'will find the contact based on their name' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      new_contact.save
      new_contact2 = Contact.new({:first_name => 'Eric', :last_name => 'Bomblatus', :job_title => 'student', :company => 'Epicodus'})
      new_contact2.save
      expect(Contact.find(1)).to eq(new_contact)
    end
  end
end
