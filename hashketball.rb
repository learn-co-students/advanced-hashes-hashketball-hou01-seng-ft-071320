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

def num_points_scored(player_name)
  current_player_score = nil
  game_hash.each do |k,v|
    i = 0
    while i < game_hash[k][:players].length
      if game_hash[k][:players][i][:player_name] == player_name
         current_player_score =  game_hash[k][:players][i][:points]
      end
      i += 1
    end
  end
  current_player_score
end

def shoe_size(player_name)
  current_player_shoe = nil
  game_hash.each do |k,v|
    i = 0
    while i < game_hash[k][:players].length
      if game_hash[k][:players][i][:player_name] == player_name
         current_player_shoe =  game_hash[k][:players][i][:shoe]
      end
      i += 1
    end
  end
  current_player_shoe
end

def team_colors(team_name)
  selected_team_color = nil
  game_hash.each do |k,v|
    if game_hash[k][:team_name] == team_name
      selected_team_color = game_hash[k][:colors]
    end
  end  
  selected_team_color
end

def team_names
  teams = []
  game_hash.each do |k,v|
    teams.push(game_hash[k][:team_name])
  end
teams
end

def player_numbers(team_name)
  team_numbers = []
  game_hash.each do |k,v|
    i = 0
    while i < game_hash[k][:players].length
      if game_hash[k][:team_name] == team_name
        team_numbers.push(game_hash[k][:players][i][:number])
      end
      i += 1
    end    
  end
 team_numbers
end

def player_stats(player_name)
  current_player_stats = nil
  game_hash.each do |k,v|
    i = 0
    while i < game_hash[k][:players].length
      if game_hash[k][:players][i][:player_name] == player_name
         current_player_stats =  game_hash[k][:players][i]
      end
      i += 1
    end
  end
  current_player_stats
end

def big_shoe_rebounds
  largest_shoe = 0
  largest_shoe_holder = nil
  largest_shoe_holder_rebounds = 0
  game_hash.each do |k,v|
    i = 0
    while i < game_hash[k][:players].length
      if game_hash[k][:players][i][:shoe] > largest_shoe
        largest_shoe = game_hash[k][:players][i][:shoe]
        largest_shoe_holder = game_hash[k][:players][i][:player_name]
        largest_shoe_holder_rebounds = game_hash[k][:players][i][:rebounds]
      end
    i += 1
    end
  end
  largest_shoe_holder_rebounds
end
