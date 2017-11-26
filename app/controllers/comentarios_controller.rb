class ComentariosController < ApplicationController
  before_action :authenticate_usuario!


  def create
    @articulo = Articulo.find(params[:articulo_id])
    @comentario = Comentario.new(comentario_params)
    @comentario.articulo_id = @articulo.id
    @comentario.usuario_id = current_usuario.id
      if @comentario.save
        flash[:success] = "#{@comentario.usuario.name} has creado tu comentario!"
        redirect_to articulo_path(@articulo)
      else
        render 'new'
    end
  end

  def destroy
    @articulo = Articulo.find(params[:articulo_id])
    @comentario = @articulo.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to articulo_path(@articulo)
  end

  private

  def comentario_params
    params.require(:comentario).permit(:comentario)
    #code
  end
end
