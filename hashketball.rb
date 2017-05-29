# Write your code here!
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" =>{
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" =>{
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" =>{
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" =>{
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" =>{
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" =>{
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" =>{
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" =>{
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" =>{
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" =>{
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def num_points_scored(player)
  game_hash.each do |teams_key, teams_value|
    if teams_value[:players].keys.include?(player)
      return teams_value[:players][player][:points]
    end
  end
  return nil
end

def shoe_size(player)
  game_hash.each do |teams_key, teams_value|
    if teams_value[:players].keys.include?(player)
      return teams_value[:players][player][:shoe]
    end
  end
  return nil
end

def team_colors(team)
  game_hash.each do |teams_key, teams_value|
    if teams_value[:team_name] == team
      return teams_value[:colors]
    end
  end
end

def team_names
  name_array = []
  game_hash.each do |teams_key, teams_value|
    name_array << teams_value[:team_name]
  end
  return name_array
end

def player_numbers(team)
  number_array = []
  game_hash.each do |teams_key, teams_value|
    if teams_value[:team_name] == team
      teams_value[:players].each do |player_key, player_value|
        number_array << player_value[:number]
      end
    end
  end
  return number_array
end

def player_stats(player)
  game_hash.each do |key1, value1|
    if value1[:players].keys.include?(player)
      return value1[:players][player]
    end
  end
end

def big_shoe_rebounds
  biggest_shoe = 0
  biggest_shoe_player = ""
  biggest_shoe_rebounds = 0
  counter = 1
  game_hash.each do |key1, value1|
    value1[:players].each do |key2, value2|
      if counter == 1
        biggest_shoe = value2[:shoe]
        biggest_shoe_player = key2
      else
        if  value2[:shoe] > biggest_shoe
          biggest_shoe = value2[:shoe]
          biggest_shoe_player = key2
        end
      end
    end
  end

  game_hash.each do |key, value|
    if value[:players].keys.include?(biggest_shoe_player)
      return value[:players][biggest_shoe_player][:rebounds]
    end
  end

end
