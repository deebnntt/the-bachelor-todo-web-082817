

def get_first_name_of_season_winner(hash, season)
  winner = ""
    hash.each do |season_hash, contestant_array|
      if season_hash == season
      contestant_array.each do |data_hash, value|
        if data_hash["status"] == "Winner"
          winner = data_hash["name"].split(" ")[0]
          end
        end
      end
    end
    winner
  end


def get_contestant_name(contestant, occupation)
  contestant.each do |season_hash, contestant_array|
    contestant_array.each do |data_hash, value|
      if data_hash["occupation"] == occupation
         return data_hash["name"]
        end
      end
    end
  end

def count_contestants_by_hometown(data, hometown)
  hometown_array = []
  data.each do |season_hash, contestant_array|
    contestant_array.each do |data_hash, value|
      if data_hash["hometown"] == hometown
         hometown_array << 1
        end
      end
    end
  return hometown_array.length
end

def get_occupation(data, hometown)
  data.each do |season_hash, contestant_array|
    contestant_array.each do |data_hash, value|
      if data_hash["hometown"] == hometown
        return data_hash["occupation"]
        end
      end
    end
  end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |season_hash, contestant_array|
    if season_hash == season
    contestant_array.each do |data_hash, value|
      age_array.push(data_hash["age"].to_i)
        end
      end
    end
    average_age = age_array.reduce(:+) / age_array.count.to_f
    return average_age.round
end
