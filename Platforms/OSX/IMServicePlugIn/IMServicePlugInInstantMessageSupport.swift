
protocol IMServicePlugInInstantMessagingSupport {
  func userDidStartTypingToHandle(_ handle: String!)
  func userDidStopTypingToHandle(_ handle: String!)
  func sendMessage(_ message: IMServicePlugInMessage!, toHandle handle: String!)
}
protocol IMServiceApplicationInstantMessagingSupport {
  func handleDidStartTyping(_ handle: String!)
  func handleDidStopTyping(_ handle: String!)
  func plugInDidReceiveMessage(_ message: IMServicePlugInMessage!, fromHandle handle: String!)
  func plugInDidSendMessage(_ message: IMServicePlugInMessage!, toHandle handle: String!, error error: NSError!)
}
