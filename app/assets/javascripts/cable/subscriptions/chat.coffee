App.chatChannel = App.cable.subscriptions.create { channel: "ChatChannel", room: "Best Room" },
  received: (data) ->
    console.log data
    @appendLine(data)
 
  appendLine: (data) ->
    html = @createLine(data)
    $("[data-chat-room='Best Room']").append(html)
 
  createLine: (data) ->
    """
    <article class="chat-line">
      <span class="speaker">#{data["sent_by"]}</span>
      <span class="body">#{data["body"]}</span>
    </article>
    """

App.chatChannel.send({ sent_by: "Paul", body: "This is a cool chat app." })