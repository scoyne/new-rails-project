class WikisController < ApplicationController

  def index
    @user = User.find_by(id: session[:user_id])
    @wikis = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new
    @wiki.title = params[:wiki][:title]
    @wiki.body = params[:wiki][:body]

    if @wiki.save
      flash[:notice] = "The Wiki was saved successfully."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error saving the wiki. Please try again."
      render :new
    end
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end

  def update
    @wiki = Wiki.find(params[:id])
    @wiki.title = params[:wiki][:title]
    @wiki.body = params[:wiki][:body]

    if @wiki.save
      flash[:notice] = "Wiki was updated successfully!"
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error updating your wiki. Please try again."
      puts @wiki.errors.messages

      render :edit
    end
  end

  def destroy
    @wiki = Wiki.find(params[:id])

    if @wiki.destroy
      flash[:notice] = "\"#{@wiki.title}\" was deleted successfully."
      redirect_to wikis_path
    else
      flash.now[:alert] = "There was an error deleting the wiki."
      render :show
    end
  end

  private
  def wiki_params
    params.require(:wiki).permit(:title, :body)
  end

  def authorize_user
    wiki = Wiki.find(params[:id])
    unless current_user == wiki.user || current_user.admin?
      flash[:alert] = "You can only edit public wiki pages or your own wiki page."
      redirect_to [wiki, wiki]
    end
  end

end
