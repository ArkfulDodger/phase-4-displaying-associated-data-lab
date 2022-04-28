class ItemsController < ApplicationController
  # GET /item
  def index
    items = Item.all
    render json: items,
           only: %i[id name description price],
           include: [user: { only: %i[id username city] }]
  end
end
