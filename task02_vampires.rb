class Vampire
@@coven = []
@@dead_vampires=[]
@@out_and_about_vampires=[]

attr_accessor :in_coffin, :drank_blood_today
attr_reader :name, :age 

    def initialize(name, age)
        @name=name
        @age=age
        @in_coffin=true
        @drank_blood_today=true
        @@coven << self
    end

    def drink_blood
        self.drank_blood_today=true
    end

    def thirsty_for_blood
        self.drank_blood_today=false
        self.in_coffin=false
        @@out_and_about_vampires << self
    end

    def self.sunrise
        @@coven.each do |vampire|
            if vampire.drank_blood_today
                p vampire 
                vampire.go_home
            else
                @@dead_vampires << vampire
                @@coven -= @@dead_vampires 
    end
end
end

    def self.sunset
        @@coven.each do |vampire|
            vampire.thirsty_for_blood
        end
    end

    def go_home
        self.in_coffin=true 
    end

    def self.display_coven
        return @@coven
    end

    def self.out_and_about_vampires
        return @@out_and_about_vampires
    end

    def self.display_dead
        return @@dead_vampires
    end

end
