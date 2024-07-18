import consumer from "./consumer";

const inventoryChannel = consumer.subscriptions.create("InventoryChannel", {
  received(data) {
    const element = document.getElementById(`inventory_item_${data.id}`);
    if (element) {
      element.outerHTML = data.html;
    }
  }
});

export default inventoryChannel;