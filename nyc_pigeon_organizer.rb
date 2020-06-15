require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = Hash.new
  data.each do |detail, char|
    char.each do |att, name|
      name.each do |names|
        if new_hash.has_key?(names) == false
          new_hash[names] = {}
        end
        if new_hash[names].has_key?(detail) == false
          new_hash[names][detail] = []
        end
          new_hash[names][detail] << att.to_s
        end
      end
  end
  new_hash

end
