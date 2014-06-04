require 'sinatra'
require 'json'

hello = lambda do
  {hello: :world}.to_json
end

[:get, :post, :delete, :put].each do | method_sym |
  send( method_sym,'/hello', &hello )
end