class UsersController < ApplicationController

def index
  @user = User.all
end

def show
  @user = User.find(params[:id])
end

def new
  @user = User.new
end

def create
  # Méthode qui crée un user à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
  
  @user = User.new('first_name' => params[:first_name], 'last_name' => params[:last_name], 'email' => params[:email], 'password' => params[:password], 'city_id' => rand(City.all.first.id..City.all.last.id), 'description' => params[:description], 'age' => params[:age])
  if @user.save
    redirect_to @user
  else
    render :new
  end
end

def edit
  @user = user.find(params[:id])
end

def update
end

def destroy
end

end
