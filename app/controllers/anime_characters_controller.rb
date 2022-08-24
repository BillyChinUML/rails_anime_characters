class AnimeCharactersController < ApplicationController
  def index
    @anime_characters = AnimeCharacter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @anime_characters }
      format.json { render :json => @anime_characters }
    end
  end

  def show
    @anime_character = AnimeCharacter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @anime_character }
      format.json { render :json => @anime_character }
    end
  end

  def new
    @anime_character = AnimeCharacter.new
  end

  def create
    @anime_character = AnimeCharacter.new(anime_character_params)

    if @anime_character.save
      redirect_to @anime_character
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @anime_character = AnimeCharacter.find(params[:id])
  end

  def update
    @anime_character = AnimeCharacter.find(params[:id])

    if @anime_character.update(anime_character_params)
      redirect_to @anime_character
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @anime_character = AnimeCharacter.find(params[:id])
    @anime_character.destroy

    redirect_to anime_characters_path, status: :see_other
  end

  private
  def anime_character_params
    params.require(:anime_character).permit(:name, :age, :birthday, :gender, :show, :image_link)
  end
end
