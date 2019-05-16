module Api::V1
  class StoresController < ApplicationController

    # Create Store
    def create
      @store  = Store.new(params_store)

      if @store.save
        render json: {
          status: 200,
          message: "Store created successfully",
          store: @store,
          url: api_v1_store_url(@store.app_id)
        }.to_json
      else
         render json: {
          status: 500,
          message: @store.errors
        }.to_json
      end
    end

    # Display Store Body
    def show
      @store =Store.find_by_app_id(params[:id])
      if @store
        render json: {
          status: 200,
          message: "Store Display.",
          body: @store.body
        }.to_json
      else
         render json: {
          status: 500,
          message: "Something went wrong."
        }.to_json
      end
    end


  private
    # Permit Store Parameter
    def params_store
      params.permit(:store_type, :proxy, :body)
    end
  end
end
