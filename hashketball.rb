require "pry"
#require_relative '../hashketball'

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1,
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7,
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15,
        },
       "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5,
        },
        "Jason Terry" => {
        :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1,
        },
        ]
  },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        "Jeff Adrien" => {
        :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2,
        },
        "Bismack Biyombo" => {
        :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10,
        },
         "DeSagna Diop" => {
        :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5,
        },
         "Ben Gordon" => {
        :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0,
        },
         "Kemba Walker" => {
        :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12,
        },
       ]
  }
  }
end

#all_players = game_hash[:home][:players] + game_hash[:away][:players]
     # names.each do |name_strings, nested_hash|  returns individual names and the info 

def num_points_scored(name)
    game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names|
        if names.keys.include?(name)
          return names[name][:points] 
     end
    end
  end
end

def shoe_size(name)
      game_hash.each do |locale, info|
      new = info[:players]
        new.each do |names|
        if names.keys.include?(name)
          return names[name][:shoe] 
     end
    end
  end
end

 def team_colors(team_name)
  answer = []
  game_hash.each do |locale, info|
    if info.values.include?(team_name)
      i = 0
      while i < info[:colors].length
      answer << (info[:colors]).pop do
      i += 1
    end
  end
end
end
answer
end

def team_names
  answer = []
  game_hash.each do |locale, info|
    answer << info[:team_name]
end
answer
end

def player_numbers(team_name)
    numbers = []
      game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names|
        names.each do |name_strings, nested_hash|
        if info.values.include?(team_name)
          numbers << nested_hash[:number]
     end
     end
    end
  end
numbers
end


def player_stats(name)
   stats = {}
      game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names|
          if names.keys.include?(name)
          stats = names[name]
end 
end
end 
stats
end 

# DO NOT TOUCH ABOVE HERE 

def big_shoe_rebounds
  shoe_sizes = []
  game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names|
      names.each do |name_strings, nested_hash|
      shoe_sizes << nested_hash[:shoe]
    end
  end
end
  name = []
  other_variant_shoe = shoe_sizes.max 
  game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names|
      names.select do |k,v| 
        if v[:shoe] == other_variant_shoe 
          name = k 
     end 
   end
  end
  end   
  # ABOVE HERE WORKS TO RETURN THE CORRECT NAME - JUST NEED TO USE NAME TO RETURN CORRECT # OF REBOUNDS 
  game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names|
        
        #names.each do |name_strings, nested_hash|
         names.select do |k,v| 
        if k[:players] == name 
          binding.pry 
       #   rebound_num = nested_hash[:rebounds]
 # end 
#   end
 end
end 
end
#rebound_num
end 

# player_name = names.select {|k,v| v[:shoe] == other_variant_shoe} 
# h1 = { "fish" => "aquatic animal", "tiger" => "big cat" }
# h1.assoc "fish"                       # ["fish", "aquatic animal"]
# h1.select { |k,v| k == "fish" }       # {"fish"=>"aquatic animal"}

  #array.inject(0){|sum,x| sum + x }

# def winning_team #find the team with the most points 
#   home_team_points = []
#   away_team_points = [] 
#       game_hash.each do |locale, info|
#       new = info[:players]
#       new.each do |names| 
#       names.each do |name_strings, nested_hash| 
#     #   if locale.keys.include?(:away)  
#         #binding.pry
#           home_team_points << nested_hash[:points] 
#     #   else game_hash[:away][ 
#           away_team_points << nested_hash[:points] 
# # end
# #end
# end
# end
# home_team_points
# end
 
 
 
 def most_points_scored
   points = []
   game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names| 
      names.each do |name_strings, nested_hash| 
    end 
  end 
end 
  most_points = points.max
most_points
end 

### DO NOT TOUCH BELOW HERE 

def player_with_longest_name
   name_array = []
   game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names| 
        name_array = names.keys 
      end 
    end 
  longest_name = name_array.max_by {|x| x.length}
longest_name
end 

def long_name_steals_a_ton?
  longest_name = player_with_longest_name
  longest_name_steals = []
  array_of_steals = []
  game_hash.each do |locale, info|
      new = info[:players]
      new.each do |names| 
      names.each do |name_strings, nested_hash| 
        array_of_steals << nested_hash[:steals] 
       if names.keys.include?(longest_name)
          longest_name_steals << names[longest_name][:steals]    
          end 
        end
      end 
    end 
  longest_name_steals.max == array_of_steals.max 
end 