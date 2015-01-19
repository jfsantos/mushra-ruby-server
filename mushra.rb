require 'sinatra'
require 'json'
require 'uri'
require 'sequel'

set :static, true
set :public_folder, 'mushraJS'
set :port, ARGV[0]

configure :production do
  DB = Sequel.connect ENV['DATABASE_URL']
end

configure :development do
  DB = Sequel.connect 'sqlite://test.db'
end

get '/' do
  redirect 'index.html'
end

post '/submit' do
  ratings_txt = URI.unescape(request.body.read.to_s)
  ratings_json = JSON.parse(ratings_txt)
  puts ratings_json['ratings']
  user_email = ratings_json['email']
  user_name = ratings_json['name']
  user_created_at = Time.now
  user_id = DB[:users].insert(:name => user_name, :email => user_email, :created_at => user_created_at)
  for i in 0..ratings_json['ratings'].length-1 do
    test = ratings_json['ratings']["#{i}"]
    DB[:tests].insert(:user_id => user_id, :test => i, :file1 => test["0"], :file2 => test["1"], :file3 => test["2"], :file4 => test["3"], :hidden => test['HiddenRef'])
  end
  content_type 'application/json'
  {:error => "false",:message => "Data is saved!"}.to_json
end
