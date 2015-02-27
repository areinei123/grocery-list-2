require 'pry'
require 'sinatra'
require 'erb'
require 'pg'


def db_connection
  connection = PG.connect(dbname:"groceries_list")
  begin
    yield(connection)
  ensure
    connection.close
  end
end


get '/groceries' do
  groceries = db_connection { |conn| conn.exec("SELECT list_item FROM groceries_list") }
  # binding.pry
  erb :index, locals: {groceries: groceries}
end


post '/groceries' do
  db_connection do |conn|
    conn.exec_params("INSERT INTO groceries_list
                      (list_item)
                      VALUES ($1)", [params[:item]])
    redirect '/groceries'
  end
end
