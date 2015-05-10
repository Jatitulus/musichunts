class MusicsController < ApplicationController
  before_action :find_music, only: [:show, :edit, :update, :destroy]

  def index
    @musics = Music.all.order("created_at DESC")
  end

  def show
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(musics_params)

    if @music.save
      redirect_to @music
    else
      render "New"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def musics_params
    params.require(:music).permit(:title, :artist, :url)
  end

  def find_music
    @music = Music.find(params[:id])
  end

end
