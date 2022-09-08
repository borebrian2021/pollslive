class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project Mitchelle!" }.to_json
  end

  get '/books' do
    books = Book.all
    books.to_json 
  end

  get '/books/:id' do
    books = Books.find(params[:id])
  end

end
