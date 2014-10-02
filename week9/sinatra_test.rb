require 'sinatra'
require 'thin'

get '/hello' do
  hello do |time|
    "<html><body><font color='pink'>Hello World</font><br/>
      The time is: #{time}
      </body></html>"
  end
end

get '/' do
  "<html><body><a href='/hello'>hello link</a></body></html>"
end

def hello
  time = Time.now
  yield time
end