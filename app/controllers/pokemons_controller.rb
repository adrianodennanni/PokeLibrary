class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
    respond_to do |format|
      format.html { render :partial => 'new' }
      format.js { render :new }
    end
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
    respond_to do |format|
      format.html { render :partial => 'edit' }
      format.js { render :edit }
    end
  end


  def create
    @pokemon = Pokemon.new(pokemon_params)
    vacancy = false
    catch (:done) do
      (1..4).each do |i|
        (1..current_user.boxes.find_by(number: i).size).each do |j|
          if not current_user.pokemons.where(box: i).exists?(box_position: j)
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
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attributes(pokemon_params)
    redirect_to root_path

  end

  def destroy
    Pokemon.find(params[:id]).delete

    Party.all.each do |party|
      if party.pkm1_id.to_s == params[:id].to_s
        party.pkm1_id = nil
        party.save
      elsif party.pkm2_id.to_s == params[:id].to_s
        party.pkm2_id = nil
        party.save
      elsif party.pkm3_id.to_s == params[:id].to_s
        party.pkm3_id = nil
        party.save
      elsif party.pkm4_id.to_s == params[:id].to_s
        party.pkm4_id = nil
        party.save
      elsif party.pkm5_id.to_s == params[:id].to_s
        party.pkm5_id = nil
        party.save
      elsif party.pkm6_id.to_s == params[:id].to_s
        party.pkm6_id = nil
        party.save
      end
    end

    redirect_to root_path
  end

  private

  def pokemon_params
    params.require(:pokemon).permit!
  end
end
