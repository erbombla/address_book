class Phone_Number
  @@phone_numbers = []
  attr_reader(:phone_number)

  def initialize(attributes)
    @phone_number = attributes.fetch(:phone_number)
  end

  def save(type)
    if type == 'personal'
      @@phone_numbers[0] = self
    elsif type == 'work'
      @@phone_numbers[1] = self
    elsif type == 'other'
      @@phone_numbers[2] = self
    elsif type == 'other2'
      @@phone_numbers[3] = self
    end
  end

  def self.all
    @@phone_numbers
  end

  def self.clear
    @@phone_numbers = []
  end
end
