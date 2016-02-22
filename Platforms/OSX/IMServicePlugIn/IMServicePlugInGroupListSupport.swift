
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
  func sendAuthorizationRequest(toHandle handle: String!)
  func acceptAuthorizationRequest(fromHandle handle: String!)
  func declineAuthorizationRequest(fromHandle handle: String!)
}
protocol IMServicePlugInGroupListHandlePictureSupport : NSObjectProtocol {
  func requestPicture(forHandle handle: String!, withIdentifier identifier: String!)
}
protocol IMServiceApplicationGroupListSupport : IMServiceApplication {
  func plug(inDidUpdateGroupList groups: [AnyObject]!, error: NSError!)
}
protocol IMServiceApplicationGroupListAuthorizationSupport : IMServiceApplicationGroupListSupport {
  func plugInDidReceiveAuthorizationRequest(fromHandle handle: String!)
}
