class Teacher < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :email, uniqueness: true

end