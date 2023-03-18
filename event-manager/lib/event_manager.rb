require 'csv'
require 'google/apis/civicinfo_v2'
require 'erb'


def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end

def legislators_by_zipcode(zipcode)
  civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
  civic_info.key = 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'
  begin
    legislators = civic_info.representative_info_by_address(
      address: zipcode,
      levels: 'country',
      roles: ['legislatorUpperBody', 'legislatorLowerBody']
    ).officials
  rescue
    'You can find your representatives by visiting www.commoncause.org/take-action/find-elected-officials'
  end
end

def save_thank_you_letter (id, form_letter)
  Dir.mkdir('output') unless Dir.exist?('output')

  filename = "output/thanks_#{id}.html"

  File.open(filename, 'w') do |file|
    file.puts form_letter
  end
end

puts 'Event Manager Initialized!'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

template_letter = File.read('form_letter.erb')
erb_template = ERB.new template_letter

hours = Array.new(24, 0)
weekdays = Hash.new(0)
options = [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]

contents.each do |row|
  id = row[0]
  name = row[:first_name] + " " + row[:last_name]
  phone = row[:homephone].tr('^0-9','')
  date, time = row[:regdate].split(' ')
  hour, minute = time.split(":")
  
  date.sub! '/0', '/200'
  date = Date.strptime(date, '%m/%d/%Y')
  weekdays[options[date.wday]] += 1
  puts date

  hours[hour.to_i - 1] += 1

  zipcode = clean_zipcode(row[:zipcode])
  legislators = legislators_by_zipcode(zipcode)

  form_letter = erb_template.result(binding)
  save_thank_you_letter(id, form_letter)
end

hours.each_with_index do |votes, hour|
  puts "0" * (2-(hour.to_s.length)) + "#{hour + 1} o'clock: #{votes}"
end
puts weekdays