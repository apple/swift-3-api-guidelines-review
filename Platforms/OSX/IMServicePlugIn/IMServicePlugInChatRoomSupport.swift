
protocol IMServicePlugInChatRoomSupport {
  func joinChatRoom(roomName: String!)
  func leaveChatRoom(roomName: String!)
  func inviteHandles(handles: [AnyObject]!, toChatRoom roomName: String!, withMessage message: IMServicePlugInMessage!)
  func sendMessage(message: IMServicePlugInMessage!, toChatRoom roomName: String!)
  func declineChatRoomInvitation(roomName: String!)
}
protocol IMServiceApplicationChatRoomSupport : IMServiceApplication {
  func plugInDidReceiveInvitation(invitation: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceiveMessage(message: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceiveNotice(notice: String!, forChatRoom roomName: String!)
  func plugInDidSendMessage(message: IMServicePlugInMessage!, toChatRoom roomName: String!, error: NSError!)
  func plugInDidJoinChatRoom(roomName: String!)
  func plugInDidLeaveChatRoom(roomName: String!, error: NSError!)
  func handles(handles: [AnyObject]!, didJoinChatRoom roomName: String!)
  func handles(handles: [AnyObject]!, didLeaveChatRoom roomName: String!)
}
