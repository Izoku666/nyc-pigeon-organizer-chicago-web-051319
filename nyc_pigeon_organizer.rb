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
  # write your code here!
  #puts data
  
  res = {}
  data.each do |infoKey , infoOptions|
    puts "#{infoKey} is the key"
    infoOptions.each do |option , pidgeons|
      puts "#{pidgeons} has #{option} as ' #{infoKey} ' "
      
      pidgeons.each do |i|
        puts"listing pidgeons #{i}"
        res[i] = infoKey
        res[i][infoKey] = option
      end
    end
  end
  
  puts "Result:   #{res}"
end


nyc_pigeon_organizer(pigeon_data)
