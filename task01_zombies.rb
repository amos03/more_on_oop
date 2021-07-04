class Zombie
    @@horde=[]
    @@plague_level=10
    @@max_speed=5
    @@max_strength=8
    @@default_speed=1
    @@default_strength=3

def initialize(speed,strength)
    if speed > @@max_speed
        speed = @@default_speed
    end
    if strength >= @@max_strength
        strength = @@default_strength
    end
    new_zombie = Zombie.new(speed, strength)
    @@horde << new_zombie
end

def encounter
end

def outrun_zombie?
end

def survive_attack?
end

def self.all
    p @@horde
end

def self.new_day
    puts "=========================="
    puts "A new day has dawned."
    puts "---------------------------"
    some_die_off
    spawn
    increase_plague_level
end

def self.some_die_off
    removal=rand(10)
    @@horde.pop(removal)
    p "#{removal} zombies gone."
end

def self.spawn
    number_of_spawns = rand(@@plague_level)
    p "#{number_of_spawns} new zombies spawned."
    loops = 0
    while loops =< number_of_spawns
        loops +=1
        new_spawn = Zombie.new(rand(@@max_speed), rand(@@max_strength)) 
    end
end

def self.increase_plague_level
    increase = rand(2)
    @@plague_level+=increase
    p "Plague level increased by #{increase} to #{@@plague_level}."
    puts "=========================="
end



end