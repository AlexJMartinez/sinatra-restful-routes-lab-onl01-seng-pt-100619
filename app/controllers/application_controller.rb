require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes/new'
    erb: new
end

post '/recipes' do
  @recipe = Article.create(:title => params[:title], :content => params[:content])
  redirect to "/articles/#{@article.id}"
end

end
