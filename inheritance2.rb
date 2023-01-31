class Employee

    attr_reader :boss ,:salary
    def initialize(name,title,salary,boss=nil)
        @name = name
        @title = title 
        @salary = salary.to_i 
        @boss = boss 
        if @boss !=nil
            self.boss.minions << self
        end
    end

    def bonus(multi)
        bonus = @salary.to_i * multi
    end

end

class Manager < Employee 
    attr_reader :minions 
        def initialize(name,title,salary,boss=nil)
            super#(name,title,salary,boss)
           @minions=[]
        end

        def bonus_manager(multi)
          self.sub_salary  * multi
        end

        def sub_salary
            minion_total=0
           @minions.each do |minion|
            if minion.is_a?(Manager)
            minion_total+= minion.salary + minion.sub_salary 
            else
            minion_total+= minion.salary
           end
           minion_total
        end
    end

    
end

# ceo =Manager.new("ceo","CEO",100)
# manager = Manager.new("man","manager",50,ceo)
# min2 = Employee.new("min2","slave","12",manager)
# min1 = Employee.new("min1","slave","10",manager)

