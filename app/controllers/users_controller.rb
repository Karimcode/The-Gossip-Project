class UsersController < ApplicationController
#  def display
#    @user_nb = User.find_by(id: params[:user_id])
#    @city = City.find(@user_nb.city_id).name
#    @user = nil
#    User.all.each do |author|
#      @user = author
#    end
#  end

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
  @user = User.new(gossip_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
end

def create
  # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
  # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
  # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
end

def edit
  # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
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
