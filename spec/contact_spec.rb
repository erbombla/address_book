require 'rspec'
require 'contact'

describe 'Contact' do
  describe '#name' do
    it 'displays contacts info' do
      new_contact = Contact.new({:first_name => 'Ryan', :last_name => 'Back', :job_title => 'student', :company => 'Epicodus'})
      expect(new_contact.first_name).to eq('Ryan')
    end
  end
end
