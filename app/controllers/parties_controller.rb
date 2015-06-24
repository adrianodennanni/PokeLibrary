class PartiesController < ApplicationController
  def new
    @party = Party.new
    respond_to do |format|
      format.html { render :partial => 'new' }
      format.js { render :new }
    end
  end

  def create
    @party = Party.new(party_params)
    @party.user_id=current_user.id
    @party.save
    redirect_to root_path
  end

  def edit
    @party = Party.find(params[:id])

    @pkmid=[]
    @pkmid[1]= @party.pkm1_id.nil?
    @pkmid[2]= @party.pkm2_id.nil?
    @pkmid[3]= @party.pkm3_id.nil?
    @pkmid[4]= @party.pkm4_id.nil?
    @pkmid[5]= @party.pkm5_id.nil?
    @pkmid[6]= @party.pkm6_id.nil?


    @code=[]
    @code[1]= PokemonDefault.where(forme: nil).find_by_num(Pokemon.find(@party.pkm1_id).number).code unless @pkmid[1]
    @code[2]= PokemonDefault.where(forme: nil).find_by_num(Pokemon.find(@party.pkm2_id).number).code unless @pkmid[2]
    @code[3]= PokemonDefault.where(forme: nil).find_by_num(Pokemon.find(@party.pkm3_id).number).code unless @pkmid[3]
    @code[4]= PokemonDefault.where(forme: nil).find_by_num(Pokemon.find(@party.pkm4_id).number).code unless @pkmid[4]
    @code[5]= PokemonDefault.where(forme: nil).find_by_num(Pokemon.find(@party.pkm5_id).number).code unless @pkmid[5]
    @code[6]= PokemonDefault.where(forme: nil).find_by_num(Pokemon.find(@party.pkm6_id).number).code unless @pkmid[6]

    @shiny=[]
    @shiny[1]= Pokemon.find(@party.pkm1_id).shiny unless @pkmid[1]
    @shiny[2]= Pokemon.find(@party.pkm2_id).shiny unless @pkmid[2]
    @shiny[3]= Pokemon.find(@party.pkm3_id).shiny unless @pkmid[3]
    @shiny[4]= Pokemon.find(@party.pkm4_id).shiny unless @pkmid[4]
    @shiny[5]= Pokemon.find(@party.pkm5_id).shiny unless @pkmid[5]
    @shiny[6]= Pokemon.find(@party.pkm6_id).shiny unless @pkmid[6]

    respond_to do |format|
      format.html { render :partial => 'edit' }
      format.js { render :edit }
    end
  end

  def update
    @party = Party.find(params[:id])
    @party.update_attributes(party_params)
    redirect_to root_path

  end

  def destroy
    Party.find(params[:id]).delete
    redirect_to root_path
  end


  private

  def party_params
    params.require(:party).permit!
  end
end
