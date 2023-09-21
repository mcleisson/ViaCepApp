# app/controllers/contatos_controller.rb
class ContatosController < ApplicationController
    before_action :set_contato, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
  
    def index
      @contatos = current_user.contatos
    end
  
    def show
      @contato = current_user.contatos.find(params[:id])
    end
  
    def new
      @contato = current_user.contatos.build
    end
  
    def create
      @contato = current_user.contatos.build(contato_params)
  
      if CPF.valid?(contato_params[:cpf]) && @contato.save
        redirect_to @contato, notice: 'Contato criado com sucesso.'
      else
        flash.now[:notice] = 'CPF inválido ou já existe.'
        render :new
      end
    end
  
    def edit
      
    end
  
    def update
      @contato = current_user.contatos.find(params[:id])

      if @contato.update(contato_params)
        flash[:success] = 'Contato atualizado com sucesso!'
        redirect_to contatos_url
      else
        flash[:error] = 'Erro ao atualizar o contato. Verifique os campos.'
        render 'edit'
    end
    end
  
    def destroy
      @contato = current_user.contatos.find(params[:id])
      @contato.destroy
      redirect_to contatos_url, notice: 'Contato excluído com sucesso.'
    end
  
    private
  
    def set_contato
      begin
        @contato = current_user.contatos.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        flash[:alert] = 'Contato não encontrado.'
        redirect_to contatos_path
      end
    end
  
    def contato_params
      params.require(:contato).permit(:nome, :email, :telefone, :cep, :logradouro, :bairro, :cidade, :estado, :cpf, :latitude, :longitude, :user_id)
    end
  end
  