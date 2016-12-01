require 'rspec'
require 'address'
require 'contact'

describe 'Address' do
  # before do
  #   Address.clear
  # end
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
  describe '#city' do
    it 'displays city' do
      new_address = Address.new({:type => 'home', :address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.city).to eq('Hillsboro')
    end
  end
  describe '#state' do
    it 'displays state' do
      new_address = Address.new({:type => 'home', :address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.state).to eq('OR')
    end
  end
  describe '#zip_code' do
    it 'displays zip code' do
      new_address = Address.new({:type => 'home', :address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.zip_code).to eq(97006)
    end
  end
  describe '#country' do
    it 'displays country' do
      new_address = Address.new({:type => 'home', :address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.country).to eq('United States')
    end
  end
end
