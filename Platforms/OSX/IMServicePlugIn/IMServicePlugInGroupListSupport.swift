
protocol IMServicePlugInGroupListSupport {
  func requestGroupList()
}
protocol IMServicePlugInGroupListEditingSupport : IMServicePlugInGroupListSupport {
  func addGroups(groupNames: [AnyObject]!)
  func removeGroups(groupNames: [AnyObject]!)
  func renameGroup(oldGroupName: String!, toGroup newGroupName: String!)
  func addHandles(handles: [AnyObject]!, toGroup groupName: String!)
  func removeHandles(handles: [AnyObject]!, fromGroup groupName: String!)
}
protocol IMServicePlugInGroupListOrderingSupport : IMServicePlugInGroupListSupport {
  func reorderGroups(groupNames: [AnyObject]!)
  func reorderHandles(handles: [AnyObject]!, inGroup groupName: String!)
}
protocol IMServicePlugInGroupListAuthorizationSupport : IMServicePlugInGroupListSupport {
  func sendAuthorizationRequestToHandle(handle: String!)
  func acceptAuthorizationRequestFromHandle(handle: String!)
  func declineAuthorizationRequestFromHandle(handle: String!)
}
protocol IMServicePlugInGroupListHandlePictureSupport : ObjectProtocol {
  func requestPictureForHandle(handle: String!, withIdentifier identifier: String!)
}
protocol IMServiceApplicationGroupListSupport : IMServiceApplication {
  func plugInDidUpdateGroupList(groups: [AnyObject]!, error: Error!)
}
protocol IMServiceApplicationGroupListAuthorizationSupport : IMServiceApplicationGroupListSupport {
  func plugInDidReceiveAuthorizationRequestFromHandle(handle: String!)
}
