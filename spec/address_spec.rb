require 'rspec'
require 'address'
require 'contact'

describe 'Address' do
  describe '#type' do
    it 'displays address type' do
      new_address = Address.new({:type => 'home', :address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.type).to eq('home')
    end
  end
  describe '#address' do
    it 'displays address' do
      new_address = Address.new({:type => 'home', :address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.address).to eq('409 Tork Place')
    end
  end
end
