require 'rspec'
require 'contact'
require 'address'
require 'email'
require 'phone_number'

describe 'Email' do
  before do
    Contact.clear
  end
  describe '#address' do
    it 'displays the email address' do
      new_email = Email.new({:email_address => 'ryanpback@gmail.com'})
      expect(new_email.email_address).to eq('ryanpback@gmail.com')
    end
  end
  describe '.all' do
    it 'creates an empty array' do
      expect(Email.all).to eq([])
    end
  end
  describe '.clear' do
    it 'clears email_addresses array' do
      expect(Email.clear).to eq([])
    end
  end
  describe '#save_personal' do
    it 'saves personal email to the address array' do
      new_email = Email.new({:email_address => 'ryanpback@gmail.com'})
      expect(new_email.save_personal).to eq(new_email)
    end
  end
  describe '#save_work' do
    it 'saves work email to the address array' do
      new_email = Email.new({:email_address => 'ryanpback@gmail.com'})
      expect(new_email.save_work).to eq(new_email)
    end
  end
  describe '#save_other' do
    it 'saves other email to the address array' do
      new_email = Email.new({:email_address => 'ryanpback@gmail.com'})
      expect(new_email.save_other).to eq(new_email)
    end
  end

end
