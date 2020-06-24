# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(basketball_player)
  points = "Player not on Team"
  game_hash.each do |key,value|
    value[:players].each do |index|
      if index[:player_name] == basketball_player
        points = index[:points]
      end
    end
  end
  points
end

def shoe_size(basketball_player)
  shoe_size = "Player not on Team"
  game_hash.each do |key,value|
    value[:players].each do |index|
      if index[:player_name] == basketball_player
        shoe_size = index[:shoe]
      end
    end
  end
  shoe_size
end

def team_colors(team_name)
  team_colors = "Team does not Exist"
  game_hash.each do |key,value|
    if value[:team_name] == team_name
      team_colors = value[:colors]
    end
  end
  team_colors
end

def team_names
  names_of_teams = game_hash.each_with_object([]) do |(key,value),team_array|
    team_array << value[:team_name]
  end
  names_of_teams
end

def player_numbers(team_name)
  number_in_team = []
  game_hash.each do |key,value|
    if value[:team_name] == team_name
      value[:players].each do |index|
        number_in_team << index[:number]
      end
    end
  end
  number_in_team
end

def player_stats(basketball_player)
  stats = "Player not on Team"
  game_hash.each do |key,value|
    value[:players].each do |index|
      if index[:player_name] == basketball_player
        stats = index
      end
    end
  end
  stats
end

def big_shoe_rebounds
  #returns the number of rebounds of the player with the biggest shoe size
  shoe_size = 0
  rebound = 0
  game_hash.each do |key,value|
    value[:players].each do |index|
      if index[:shoe] > shoe_size
        shoe_size = index[:shoe]
        rebound = index[:rebounds]
      end
    end
  end
  rebound
end
