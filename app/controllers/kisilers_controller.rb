class KisilersController < ApplicationController
  def index
    @kisiler=Kisiler.all
  end
  def new
    @kisiler = Kisiler.new
  end
  def edit
    @kisiler = Kisiler.find_by(id: params[:id])
  end
  def show
    @kisi = Kisiler.find_by(id: params[:id])
  end
  def create
    @kisiler = Kisiler.new(kisiler_save_params)
    if @kisiler.save
      redirect_to kisilers_path
    else
      render 'index'
    end
  end
  def kisiler_save_params
    params.require(:kisiler).permit(:adsoyad,:telefon,:eposta,:adres,:sifre,:tcno,:dogumtarihi,:meslek)
  end
end
