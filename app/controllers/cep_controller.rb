# app/controllers/cep_controller.rb
class CepController < ApplicationController
    require 'httparty'
  
    def consulta_cep
      cep = params[:cep]
      response = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
  
      if response.success?
        
        render json: response.body
      else
        render json: { error: 'CEP não encontrado' }, status: 404
      end
    end
  end
  