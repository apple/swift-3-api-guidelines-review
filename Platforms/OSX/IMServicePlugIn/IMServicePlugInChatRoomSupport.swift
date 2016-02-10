
protocol IMServicePlugInChatRoomSupport {
  func joinChatRoom(roomName: String!)
  func leaveChatRoom(roomName: String!)
  func inviteHandles(handles: [AnyObject]!, toChatRoom roomName: String!, with message: IMServicePlugInMessage!)
  func send(message: IMServicePlugInMessage!, toChatRoom roomName: String!)
  func declineChatRoomInvitation(roomName: String!)
}
protocol IMServiceApplicationChatRoomSupport : IMServiceApplication {
  func plugInDidReceiveInvitation(invitation: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceive(message: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plugInDidReceiveNotice(notice: String!, forChatRoom roomName: String!)
  func plugInDidSend(message: IMServicePlugInMessage!, toChatRoom roomName: String!, error: Error!)
  func plugInDidJoinChatRoom(roomName: String!)
  func plugInDidLeaveChatRoom(roomName: String!, error: Error!)
  func handles(handles: [AnyObject]!, didJoinChatRoom roomName: String!)
  func handles(handles: [AnyObject]!, didLeaveChatRoom roomName: String!)
}
