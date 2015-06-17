class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
    respond_to do |format|
      format.html {render :partial => 'new'}
      format.js {render :new}
    end
  end

  def edit
  end


  def create
    @pokemon = Pokemon.new(pokemon_params)

    vacancy = false
      catch (:done) do
      (1..4).each do |i|
        (1..2).each do |j|
          if not Pokemon.where(box: i).exists?(box_position: j)
            vacancy = true
            @pokemon.box_id = i
            @pokemon.box_position= j
            throw :done
          end
        end
      end
    end


    @pokemon.user_id= current_user.id

    if vacancy == true
      @pokemon.save
    end

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
      params.require(:pokemon).permit!
    end
end
