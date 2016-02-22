
protocol IMServicePlugInInstantMessagingSupport {
  func userDidStartTyping(toHandle handle: String!)
  func userDidStopTyping(toHandle handle: String!)
  func send(message: IMServicePlugInMessage!, toHandle handle: String!)
}
protocol IMServiceApplicationInstantMessagingSupport {
  func handleDidStartTyping(handle: String!)
  func handleDidStopTyping(handle: String!)
  func plug(inDidReceive message: IMServicePlugInMessage!, fromHandle handle: String!)
  func plug(inDidSend message: IMServicePlugInMessage!, toHandle handle: String!, error: NSError!)
}
