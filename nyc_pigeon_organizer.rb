require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |data_key, data_hash|
    data_hash.each do |hash_key, hash_array|
      hash_array.each do |pigeon_name|

        if !pigeon_hash.has_key?(pigeon_name)
          pigeon_hash[pigeon_name] = {}
        end

        if !pigeon_hash[pigeon_name].has_key?(data_key)
          pigeon_hash[pigeon_name][data_key] = []
        end

        if !pigeon_hash[pigeon_name][data_key].include?(hash_key)
          pigeon_hash[pigeon_name][data_key] << hash_key.to_s
        end

      end
    end
  end
  pigeon_hash
end
