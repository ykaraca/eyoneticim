class DairesController < ApplicationController
  def index
    @daires= Daire.includes(:dairetipi,:blok)
  end

  def show
    @daire = Daire.find_by(id: params[:id])
  end

  def new
    @daire = Daire.new

  end

  def edit
    @daire = Daire.find_by(id: params[:id])

  end

  def update
    @daire = Daire.find_by(id: params[:id])


    @daire.update(daire_update_params)

    redirect_to daires_path
  end

  def create
    @daire = Daire.new(daire_save_params)
 if @daire.save
   redirect_to daires_path
 else
   render 'index'
 end
end


  def daire_save_params
    params.require(:daire).permit(:daireno,:kat,:brut,:net,:arsapayi,:parksayisi,:peteksayisi,:dairetipi_id,:blok_id)
  end

  def daire_update_params
    params.require(:daire).permit(:daireno,:kat,:brut,:net,:arsapayi,:parksayisi,:peteksayisi,:dairetipi_id,:blok_id)
  end

end
