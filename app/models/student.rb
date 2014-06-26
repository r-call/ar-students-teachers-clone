class Student < ActiveRecord::Base
  # Validations
  validates :email, presence: true

  # Callbacks
  before_validation do
    # self refers to the student record
    puts "BEFORE VALIDATION"
    puts "#{self.inspect}"
  end

  after_validation do
    puts "AFTER VALIDATION"
    puts "#{self.inspect}"
  end

  before_create do
    puts "BEFORE CREATE"
    puts "#{self.inspect}"
  end

  after_create do
    puts "AFTER CREATE"
    puts "#{self.inspect}"
  end

  before_save do
    puts "BEFORE SAVE"
    puts "#{self.inspect}"
  end

  after_save do
    puts "AFTER SAVE"
    puts "#{self.inspect}"
  end

  before_destroy do
    puts "BEFORE DESTROY"
    puts "#{self.inspect}"
  end

  after_destroy do
    puts "AFTER DESTROY"
    puts "#{self.inspect}"
  end
end
