require 'rspec'
require 'contact'
require 'address'
require 'email'
require 'phone_number'

describe 'Address' do
  before do
    Address.clear
  end
  describe '#address' do
    it 'displays address' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.address).to eq('409 Tork Place')
    end
  end
  describe '#city' do
    it 'displays city' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.city).to eq('Hillsboro')
    end
  end
  describe '#state' do
    it 'displays state' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.state).to eq('OR')
    end
  end
  describe '#zip_code' do
    it 'displays zip code' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.zip_code).to eq(97006)
    end
  end
  describe '#country' do
    it 'displays country' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.country).to eq('United States')
    end
  end
  describe '.all' do
    it 'creates an empty array' do
      expect(Address.all).to eq([])
    end
  end
  describe '#save_home' do
    it 'saves home address to the address array' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.save_home).to eq(new_address)
    end
  end
  describe '#save_other' do
    it 'saves other address to the address array' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.save_other).to eq(new_address)
    end
  end
  describe '#save_po' do
    it 'saves po box to the address array' do
      new_address = Address.new({:address => '409 Tork Place', :city => 'Hillsboro', :state => 'OR', :zip_code => 97006, :country => 'United States'})
      expect(new_address.save_po).to eq(new_address)
    end
  end
  describe '.clear' do
    it 'will clear the array' do
      expect(Address.clear).to eq([])
    end
  end
end
