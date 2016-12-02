class Phone
  @@numbers = []
  attr_reader(:phone_number)

  def initialize(attributes)
    @phone_number = attributes.fetch(:phone_number)
  end

  def save_personal
    @@numbers[0] = @phone_number
  end

  def save_work
    @@numbers[1] = @phone_number
  end

  def save_other
    @@numbers[2] = @phone_number
  end

  def self.all
    @@numbers
  end

  def self.clear
    @@numbers = []
  end
end
