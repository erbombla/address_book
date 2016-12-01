require 'rspec'
require 'contact'

describe 'Contact' do
  describe '#name' do
    it 'displays contacts info' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      expect(new_contact.first_name).to eq('Ryan')
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
end
