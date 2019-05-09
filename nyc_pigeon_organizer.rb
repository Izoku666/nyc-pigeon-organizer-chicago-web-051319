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
    
  # This will setup the new hash structure with pidgeon names
    infoOptions.each do |option , pidgeon|
      pidgeon.each do |i|  # creates a new hash key for every pidgeon
        if !res.include?(i)
          res[i] = {}
          #puts res
        end
      end
    end
    
  #this will setup the arrays inside of each of the pidgeon keys
    infoOptions.each do|option , pidgeon|
      pidgeon.each do |i|
        res[i][infoKey] = []
      end
    end
  end
  
  # loop through the data hash again in order to get the data STDOUT
  res.each do |pidgeon_name , pidgeon_data|
    data.each do |infoKey , infoOptions|
      infoOptions.each do |option , pidgeon_orig|
        puts "#{option} ,  #{pidgeon_orig}"
        if pidgeon_name == pidgeon_orig
          puts "Adding Data!"
        end
      end
    end
  
  end

  
  
  puts "Result:   #{res}"
  return res
end


#nyc_pigeon_organizer(pigeon_data)
