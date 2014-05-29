class Student < ActiveRecord::Base
  belongs_to :teacher

  validates :email, presence: true
  # validates :student_number, presence: true

  before_validation do
    puts "before_validation: #{self.inspect}"
  end

  before_create do |student|
    puts "before_create: #{student.inspect}"
  end

  before_save do |student|
    puts "before_save: #{student.inspect}"
  end

  before_destroy do |student|
    puts "before_destroy: #{student.inspect}"
  end
>>>>>>> Stashed changes
end
