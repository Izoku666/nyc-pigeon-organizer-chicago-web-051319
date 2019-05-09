def nyc_pigeon_organizer(data)
  # write your code here!
  res = {}
  data.each do |info , infoVal|
    infoVal.each do |infoData , name_arr|
      res[name_arr]
    end
  end
  
  puts res
  return res
end