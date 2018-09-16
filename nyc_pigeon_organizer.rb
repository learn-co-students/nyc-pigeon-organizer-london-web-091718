require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |characteristics, details|
    details.each do |info, name|
      name.each do |bird|
        if pigeon_list.has_key?(bird) == false
          pigeon_list[bird] = {}
        end
        if pigeon_list[bird].has_key?(characteristics) == false
          pigeon_list[bird][characteristics] = []
        end
        pigeon_list[bird][characteristics] << info.to_s
      end
    end
  end
  pigeon_list
end
