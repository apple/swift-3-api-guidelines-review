
protocol IMServicePlugInInstantMessagingSupport {
  func userDidStartTypingToHandle(handle: String!)
  func userDidStopTypingToHandle(handle: String!)
  func sendMessage(message: IMServicePlugInMessage!, toHandle handle: String!)
}
protocol IMServiceApplicationInstantMessagingSupport {
  func handleDidStartTyping(handle: String!)
  func handleDidStopTyping(handle: String!)
  func plugInDidReceiveMessage(message: IMServicePlugInMessage!, fromHandle handle: String!)
  func plugInDidSendMessage(message: IMServicePlugInMessage!, toHandle handle: String!, error: NSError!)
}
