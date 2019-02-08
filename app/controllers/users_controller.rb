class UsersController < ApplicationController

def index
  # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  @user = User.all
end

def show
  # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  @user = User.find(params[:id])
end

def new
  # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  @user = User.new
end

def create
  # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
  # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
  # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  
  @user = User.new('first_name' => params[:first_name], 'last_name' => params[:last_name], 'email' => params[:email], 'password' => params[:password], 'city_id' => rand(City.all.first.id..City.all.last.id), 'description' => params[:description], 'age' => params[:age])
  if @user.save
    redirect_to @user
  else
    render :new
  end
end

def edit
  # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  @user = user.find(params[:id])
end

def update
  # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
  # pour info, le contenu de ce formulaire sera accessible dans le hash params
  # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
end

def destroy
  # Méthode qui récupère le potin concerné et le détruit en base
  # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
end

end
