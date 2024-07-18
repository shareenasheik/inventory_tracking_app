class InventoryItemsController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end

  def fetch
    @inventory_item = InventoryItem.find(params[:id])
    render json: @inventory_item
  end

  def update_quantity
    if request.get?
      @inventory_items = InventoryItem.all
    else
      @inventory_item = InventoryItem.find(params[:inventory_item_id])
      if @inventory_item.update(quantity: params[:quantity])
        respond_to do |format|
          format.turbo_stream
          format.html { redirect_to inventory_items_path, notice: 'Inventory item was successfully updated.' }
        end
      else
        render :update_quantity
      end
    end
  end
end
