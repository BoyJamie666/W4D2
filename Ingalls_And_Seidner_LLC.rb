class Employee
  
  attr_reader :name, :salary

  def initialize(name, title, salary, boss=nil)
    @name = name
    @title = title
    @salary = salary 
    @boss = boss
  end

  def bonus(multiplier)
    bonus = @salary * multiplier
  end
end

class Manager < Employee 
  
  attr_accessor :subordinates
  attr_reader :name, :salary

  def initialize(name, title, salary, boss=nil)
    @subordinates = []
    super
  end

  def hire(name, title, salary, boss=nil)
    boss = self.name
    if title == "manager"
      manager = Manager.new(name, title, salary, boss)
      self.subordinates << manager
      manager
    else
      employee =  Employee.new(name, title, salary, boss)
      self.subordinates << employee
      employee
    end
  end

  def bonus(multiplier)
    sum = 0
    subordinates.each do |subordinate|
      sum += subordinate.salary
    end

    sum * multiplier
  end
end

# j = Manager.new("Jamie", "Boss Hoss", "A bajillion dolls", nil)
# js = j.hire("Jacob", "backstabber n chief", "twenty bucks")
# emp = js.hire("thing_1", "goon", "$5", "Jacob")
# emp2 = js.hire("thing_2", "goon", "$5", "Jacob")
# p emp.boss
# p j
# p js
