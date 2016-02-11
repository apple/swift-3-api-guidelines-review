
protocol IMServicePlugInChatRoomSupport {
  func joinChatRoom(roomName: String!)
  func leaveChatRoom(roomName: String!)
  func inviteHandles(handles: [AnyObject]!, toChatRoom roomName: String!, with message: IMServicePlugInMessage!)
  func send(message: IMServicePlugInMessage!, toChatRoom roomName: String!)
  func declineChatRoomInvitation(roomName: String!)
}
protocol IMServiceApplicationChatRoomSupport : IMServiceApplication {
  func plug(inDidReceiveInvitation invitation: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plug(inDidReceive message: IMServicePlugInMessage!, forChatRoom roomName: String!, fromHandle handle: String!)
  func plug(inDidReceiveNotice notice: String!, forChatRoom roomName: String!)
  func plug(inDidSend message: IMServicePlugInMessage!, toChatRoom roomName: String!, error: Error!)
  func plug(inDidJoinChatRoom roomName: String!)
  func plug(inDidLeaveChatRoom roomName: String!, error: Error!)
  func handles(handles: [AnyObject]!, didJoinChatRoom roomName: String!)
  func handles(handles: [AnyObject]!, didLeaveChatRoom roomName: String!)
}
