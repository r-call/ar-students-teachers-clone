class TeachersImporter

  def initialize
  end

  def populate
    t1 = {name: 'Ryan', email: 'ryan@test.com', address: '123 Bloor St', phone: '1112223456' }
    t2 = {name: 'Bob', email: 'bob@test.com', address: '123 Bloor St', phone: '2223333456' }
    t3 = {name: 'Sterling', email: 'sterling@test.com', address: '234 Arbutus St', phone: '2224443456' }
    t4 = {name: 'Chris', email: 'chris@test.com', address: '1702 W 4th Ave', phone: '55566663456' }
    t5 = {name: 'Garrett', email: 'garrett@test.com', address: '2205 E 6th Ave', phone: '5556663456' }
    t6 = {name: 'Suzy', email: 'suzy@test.com', address: '146 Georgia St', phone: '1117773456' }
    t7 = {name: 'Rebecca', email: 'rebecca@test.com', address: '2680 W Broadway St', phone: '9995553456' }
    t8 = {name: 'Stanley', email: 'stanley@test.com', address: '198 Canyon Ave', phone: '8885553456' }
    t9 = {name: 'Peter', email: 'peter@test.com', address: '198 Canyon Ave', phone: '4449993456' }

    Teacher.create!(t1)
    Teacher.create!(t2)
    Teacher.create!(t3)
    Teacher.create!(t4)
    Teacher.create!(t5)
    Teacher.create!(t6)
    Teacher.create!(t7)
    Teacher.create!(t8)
    Teacher.create!(t9)
    
  end
end