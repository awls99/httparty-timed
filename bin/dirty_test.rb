require_relative ('../lib/httparty/timed')

10.times do
  res = HTTParty.get 'http://google.com'
  puts res.duration
end