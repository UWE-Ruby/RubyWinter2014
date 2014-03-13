require 'sinatra'
require 'thin'

get '/hello' do 
	hez do |aa|
    "<html><body><font color='pink'>Hello World<br/>
    The time is #{aa}
    </font></html>"
  end
end

get '/' do
	"<html><body>
	HOME<br/><br>
	<a href='/hello'>link</a>
	</body></html>"
end

def hez
	time = Time.now
	yield time
end
