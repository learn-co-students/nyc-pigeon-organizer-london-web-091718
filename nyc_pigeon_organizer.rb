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
  pigeons = {}
  data.each do |attribute, data|
    data.each do |details, names|
      names.each do |each_name|
        unless pigeons.include?(each_name)
          pigeons[each_name] = {}
        end
        unless pigeons[each_name].include?(attribute)
          pigeons[each_name][attribute] = []
        end
        pigeons[each_name][attribute] << details.to_s
      end
    end
  end
  pigeons
end

nyc_pigeon_organizer(pigeon_data)