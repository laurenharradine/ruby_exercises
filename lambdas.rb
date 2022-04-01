my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |x| return true if x.is_a? Symbol }

symbols = my_array.select(&symbol_filter)
puts symbols

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda {|key, value| value < "M"}
a_to_m = crew.select(&first_half)
puts a_to_m
