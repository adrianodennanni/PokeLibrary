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
    @party.save
  end

  private

  def party_params
    params.require(:party).permit!
  end
end
