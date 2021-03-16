class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    user = User.find(customer_id)
    puts " *** HELLO FROM SIDEKIQ *** "
    puts " *** NOVO PEDIDO CRIADO POR #{ user.email }"
  end
end
