require 'rspec'
require 'contact'
require 'address'
require 'email'
require 'phone_number'

describe 'Phone_Number' do
  before do
    Phone_Number.clear
  end
  describe '#phone_number' do
    it 'displays the phone number' do
      new_phone = Phone_Number.new({:phone_number => "512-431-9333"})
      expect(new_phone.phone_number).to eq("512-431-9333")
    end
  end
  describe '.all' do
    it 'creates an empty array' do
      expect(Phone_Number.all).to eq([])
    end
  end
  describe '#save' do
    it 'saves phone number based on type' do
      new_phone = Phone_Number.new({:phone_number => "512-431-9333"})
      expect(new_phone.save('personal')).to eq(new_phone)
    end
  end
  describe '.clear' do
    it 'clears email_addresses array' do
      expect(Phone_Number.clear).to eq([])
    end
  end

end
