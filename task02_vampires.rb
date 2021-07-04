class Vampire
@@coven = []
@@dead_vampires=[]

attr_accessor :in_coffin, :drank_blood_today
attr_reader :name, :age 

    def initialize(name, age, in_coffin, drank_blood_today)
        @name=name
        @age=age
        @in_coffin=true
        @drank_blood_today=true
        @@coven << self
    end

    def drink_blood
        self.drank_blood_today=true
    end

    def self.sunrise
    end

    def self.sunset
        Vampire.
    end

    def go_home
    end

    def self.display_coven
        return @@coven
    end

    def self.display_dead
        return @@dead_vampires
    end

end
