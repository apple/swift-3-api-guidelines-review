
class AMWorkflowView : NSView {
  var isEditable: Bool
  var workflowController: AMWorkflowController?
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
struct __AMWorkflowViewFlags {
  var ignoreSubviewFrameChanges: ObjCBool
  var editingEnabled: ObjCBool
  var reserved: Int
  init()
  init(ignoreSubviewFrameChanges: ObjCBool, editingEnabled: ObjCBool, reserved: Int)
}
