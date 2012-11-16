require 'rubygems'
require 'sinatra'

# localhost:port
['/', '/home'].each {|path|
	get path do		
		# We set up the variables to be passed to the erb file here...
		@user = "Johnny NoName"

		# Render the home page
		erb :home, :locals => {:nickname => "Nickname"}
	end
}

get '/math' do
	erb :math
end

get '/about' do
	erb :about
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

get '/inverse' do
	erb :inverse # load the inverse .erb file
end

