
protocol IMServicePlugInInstantMessagingSupport {
  func userDidStartTypingToHandle(handle: String!)
  func userDidStopTypingToHandle(handle: String!)
  func send(message: IMServicePlugInMessage!, toHandle handle: String!)
}
protocol IMServiceApplicationInstantMessagingSupport {
  func handleDidStartTyping(handle: String!)
  func handleDidStopTyping(handle: String!)
  func plugInDidReceive(message: IMServicePlugInMessage!, fromHandle handle: String!)
  func plugInDidSend(message: IMServicePlugInMessage!, toHandle handle: String!, error: Error!)
}
