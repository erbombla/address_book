require 'rspec'
require 'contact'
require 'address'
require 'email'

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
  describe '#save' do
    it 'saves email based on type' do
      new_email = Email.new({:email_address => 'ryanpback@gmail.com'})
      expect(new_email.save('personal')).to eq(new_email)
    end
  end
  describe '.clear' do
    it 'clears email_addresses array' do
      expect(Email.clear).to eq([])
    end
  end

end
