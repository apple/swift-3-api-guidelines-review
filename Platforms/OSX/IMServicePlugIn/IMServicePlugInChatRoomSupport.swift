
protocol IMServicePlugInChatRoomSupport {
  func joinChatRoom(_ roomName: String!)
  func leaveChatRoom(_ roomName: String!)
  func inviteHandles(_ handles: [AnyObject]!, toChatRoom roomName: String!, withMessage message: IMServicePlugInMessage!)
  func sendMessage(_ message: IMServicePlugInMessage!, toChatRoom roomName: String!)
  func declineChatRoomInvitation(_ roomName: String!)
}
protocol IMServiceApplicationChatRoomSupport : IMServiceApplication {
  func plugInDidReceiveInvitation(_ invitation: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceiveMessage(_ message: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceiveNotice(_ notice: String!, forChatRoom roomName: String!)
  func plugInDidSendMessage(_ message: IMServicePlugInMessage!, toChatRoom roomName: String!, error error: NSError!)
  func plugInDidJoinChatRoom(_ roomName: String!)
  func plugInDidLeaveChatRoom(_ roomName: String!, error error: NSError!)
  func handles(_ handles: [AnyObject]!, didJoinChatRoom roomName: String!)
  func handles(_ handles: [AnyObject]!, didLeaveChatRoom roomName: String!)
}
