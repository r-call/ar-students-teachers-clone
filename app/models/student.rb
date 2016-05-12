class ToddlerValidator < ActiveModel::Validator

  def validate(person)
    now = Date.today
    age = now.year - person.birthday.year - ((now.month > person.birthday.month || (now.month == person.birthday.month && now.day >= person.birthday.day)) ? 0 : 1)
    if age <= 3
      person.errors[:base] << "This person is a toddler"
    end
  end
end


class Student < ActiveRecord::Base
  # implement your Student model here
  validates :email, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
  validates :email, uniqueness: true
  validates_with ToddlerValidator

  belongs_to :teacher


  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end

end

