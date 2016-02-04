
class AMWorkflowView : NSView {
  var editable: Bool
  var workflowController: AMWorkflowController?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __AMWorkflowViewFlags {
  var ignoreSubviewFrameChanges: ObjCBool
  var editingEnabled: ObjCBool
  var reserved: Int
  init()
  init(ignoreSubviewFrameChanges: ObjCBool, editingEnabled: ObjCBool, reserved: Int)
}
