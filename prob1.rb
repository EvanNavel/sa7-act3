require 'csv'

# Initialize an empty array to store the parsed data
parsed_data = []

# Open the CSV file and parse its contents
CSV.foreach("data.csv", headers: true) do |row|
  # Convert each CSV row to a hash and append it to the parsed_data array
  parsed_data << row.to_h
end

# Print the parsed data array
puts parsed_data.inspect
