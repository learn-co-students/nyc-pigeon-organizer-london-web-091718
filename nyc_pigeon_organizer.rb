def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), result|
    h.each do |val, nam|
      nam.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << val.to_s
      end
    end
  end
end