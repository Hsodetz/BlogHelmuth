class ArticulosController < ApplicationController

  before_action :authenticate_usuario!, except: [:index]
  before_action :set_id_params, only: [:show, :edit, :update, :destroy]

  def index
    @articulos = Articulo.all.order(titulo: :desc).page(params[:page]).per(5)
  end

  def show
    @articulo.update_contador_visita
    @comentario = Comentario.new
  end

  def new
    @articulo = Articulo.new
  end

  def create
    @articulo = Articulo.new(articulo_params)
    @articulo.usuario_id = current_usuario.id
    if @articulo.save
      flash[:success] = " #{current_usuario.name} has ingresado tu #{@articulo.titulo} satisfactoriamente "
      redirect_to @articulo
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    if @articulo.update(articulo_params)
      flash[:success] = " #{current_usuario.name} has actualizado el articulo #{@articulo.id} satisfactoriamente "
      redirect_to articulo_path
    else
      render 'edit'
    end
  end

  def destroy

    @articulo.destroy
    flash[:success] = "El articulo #{@articulo.titulo} se elimino correctamente!"
    redirect_to root_path
  end

  private

  def articulo_params
    params.require(:articulo).permit(:titulo, :descripcion, :imagen_articulo)
    #code
  end

  def set_id_params
    @articulo = Articulo.find(params[:id])
    #code
  end
end
