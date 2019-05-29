def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_names = data[:gender].values.flatten
  new_data = {}

  pigeon_names.each do |name|
    new_data[name] = {}
    new_data[name][:color] = []
    new_data[name][:gender] = []
    new_data[name][:lives] = []

    data[:color].each do |color, array|
      if array.any? {|e| e == name}
        new_data[name][:color] << color
      end
    end

    data[:gender].each do |gender, array|
      if array.any? {|e| e == name}
        new_data[name][:gender] << gender
      end
    end

    data[:lives].each do |place, array|
      if array.any? {|e| e == name}
        new_data[name][:lives] << place
      end
    end


  end
  puts new_data.inspect
  #puts data[:color].values.inspect
  new_data
end

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
