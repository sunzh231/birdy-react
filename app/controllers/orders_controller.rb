class OrdersController < ApplicationController
  def create
    @order = Order.create!(params[:order])

    event = {
      order_id: @order.id,
      amount: @order.amount,
      timestamp: Time.now,
    }

    $kafka_producer.produce(event.to_json, topic: "order_events")
  end
end