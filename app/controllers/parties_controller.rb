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
