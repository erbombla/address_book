require 'rspec'
require 'contact'
require 'address'
require 'email'
require 'phone_number'

describe 'Phone' do
  before do
    Phone.clear
  end
  describe '#phone_number' do
    it 'displays the phone number' do
      new_phone = Phone.new({:phone_number => "512-431-9333"})
      expect(new_phone.phone_number).to eq("512-431-9333")
    end
  end
  describe '.all' do
    it 'creates an empty array' do
      expect(Phone.all).to eq([])
    end
  end
  describe '.clear' do
    it 'clears email_addresses array' do
      expect(Phone.clear).to eq([])
    end
  end
end
