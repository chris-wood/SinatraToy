require 'rubygems'
require 'sinatra'

# localhost:port
get '/' do
	"Hello, world!"
end

# localhost:port/testParam/STRING_TO_ECHO
get '/testParam/:string' do
	params[:string] # anything after testParam/ is put in params array with the key 'string' (similar to $_REQUEST$ global array in PHP)
	"Echo: #{params[:string]}."
end

# put anything in the GET request header...
get '/testWildParam/*' do
	params[:splat] 
	"Echo: #{params[:splat]}."
end

get '/testForm' do
	erb :form # load a form.erb file from a views/ directory
end

get '/testDynamic' do
	"TODO"
end

