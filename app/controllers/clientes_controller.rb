class ClientesController < ApplicationController
  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      redirect_to @cliente, notice: 'Cliente was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def cliente_params
    params.require(:cliente).permit(:nome, :idade)
  end
end
