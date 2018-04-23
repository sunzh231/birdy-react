class WebNotificationJob < ApplicationJob
  
  def perform(comment)
    WebNotificationsChannel.broadcast_to(
      current_user,
      title: 'New things!',
      body: 'All the news fit to print'
    )
  end
end