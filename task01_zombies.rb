class Zombie
    @@horde=[]
    @@plague_level=10
    @@max_speed=5
    @@max_strength=8
    @@default_speed=1
    @@default_strength=3
    
# we don't declare instance variables outside of an instance method (or INITIALIZE)
# an instance method = a method called by an instance 
    
    attr_accessor :speed, :strength

#note: when you call .new then it goes to initialize which assigns the values contained in the argument (if there is one) to the instance
#note: initialize is initializing your instance with instance variables/attributes 

def initialize(speed,strength)
    if speed > @@max_speed
        @speed = @@default_speed
    else
        @speed = speed 
    end
    if strength >= @@max_strength
        @strength = @@default_strength
    else
        @strength = strength
    end
        @@horde << self 
end

def encounter
    puts ""
    puts "============================"
    puts "Zombie encountered!"
    puts "He's ugly: #{self}. He has a speed of #{@speed} and strength of #{@strength}."
    puts "Trying to run for it ..."
    puts "........................."
    if self.outrun_zombie?
#whoever is calling encounter, that is what self represents
        puts "You have escaped!"
    elsif self.survive_attack?
        puts "You couldn't outrun him. Fight to survive!"
        puts "You have joined Zombie World."
        @@horde << Zombie.new(rand(@@max_speed), rand(@@max_strength))
        Zombie.all
    else 
        puts ".."
        puts "You have died. R.I.P. Human."
    end
end

def outrun_zombie?
    your_speed = rand(@@max_speed)
    return your_speed > @speed
end

def survive_attack?
    your_strength = rand(@@max_strength)
    return your_strength > @strength
end 

def self.all
    p @@horde
end

def self.new_day
    puts "=========================="
    puts "A new day has dawned."
    puts "---------------------------"
#whenever you call a class method you need to call in this format: name_of_class.CLASSMETHOD (w/o the self)
    Zombie.some_die_off
    Zombie.spawn
    Zombie.increase_plague_level
end

def self.some_die_off
    removal=rand(10)
    removal.times do
        @@horde.delete_at(rand(@@horde.length))
    end
    puts ""
    puts "Dying off:"    
    puts "#{removal} zombies gone."
end

def self.spawn
    number_of_spawns = rand(@@plague_level)
    puts ""
    puts "Spawning ...."
    puts "#{number_of_spawns} new zombies spawned."
    number_of_spawns.times do 
        @@horde << Zombie.new(rand(@@max_speed), rand(@@max_strength)) 
    end
end

def self.increase_plague_level
    increase = rand(2)
    @@plague_level+=increase
    puts ""
    puts "Plague level increased by #{increase} to #{@@plague_level}."
    puts "=========================="
end

def self.pick_a_zombie
    @@horde.sample(1)
end

end