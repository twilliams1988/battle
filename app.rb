require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/cat' do
  "<div style='border: 3px dashed red'>
  <img src='http://bit.ly/1eze8aE'>
  </div>"

end

get '/jason' do
  "HI I'm Jason, but I like to be called MARLON"
end

get '/susan' do
  "helloooo :) :D ;)"
end

get '/rainbow' do
  "lemon drops and bunnies"
end
