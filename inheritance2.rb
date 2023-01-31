class Employee
    def initialize(name,title,salary,boss)
    @name = name
    @title = title 
    @salary = salary 
    @boss = boss 
    end

    def bonus(multi)
        bonus = @salary.to_i * multi
    end
end

class Manager < Employee 
        def initialize(name,title,salary,boss)
            super#(name,title,salary,boss)
            @minions=[]
        end
end
