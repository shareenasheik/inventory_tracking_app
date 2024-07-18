class InventoryItem < ApplicationRecord
	after_update_commit { broadcast_update }

	private

  def broadcast_update
    ActionCable.server.broadcast "inventory_channel", {
      id: id,
      html: ApplicationController.render(partial: 'inventory_items/inventory_item', locals: { inventory_item: self })
    }
  end
end
