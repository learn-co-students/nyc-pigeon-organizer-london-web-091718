require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  organised = {}
  data.each do |attribute, description|
    description.each do |details, name|
      name.each do |each_name|
        if organised[each_name] == nil
          organised[each_name] = {attribute => nil} 
        end
        if organised[each_name][attribute] == nil 
          organised[each_name][attribute] = [details.to_s]
        else 
          organised[each_name][attribute] << details.to_s
        end
      end
    end
  end
  organised
 
end