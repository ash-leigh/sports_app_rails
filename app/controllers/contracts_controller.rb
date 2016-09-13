class ContractsController < ApplicationController
   def index
     contracts = Contract.where( {player_id: params[:player_id]} )
     render json: contracts.as_json({include: [:sponsor, :player]})
   end

   def create
     contract = Contract.create({player_id: params[:player_id], sponsor_id: params[:sponsor_id], value: params[:value]})
     render json: contract
   end
 end