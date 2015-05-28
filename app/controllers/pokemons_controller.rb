class PokemonsController < ApplicationController

  def new
    @pokemon = Pokemon.new
    respond_to do |format|
      format.html {render :new}
      format.js {render :new}
    end
  end

  def edit
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.box_id= current_user.boxes.where(number: 1).first.id
    @pokemon.save
    redirect_to root_path
  end

  def update
    @pokemon.update(pokemon_params)
    redirect_to root_path
  end

  def destroy
    @pokemon.destroy
    redirect_to root_path
  end

  private

    def pokemon_params
      params.require(:pokemon).permit(:name, :number)
    end
end
