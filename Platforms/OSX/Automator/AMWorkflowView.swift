
class AMWorkflowView : NSView {
  var isEditable: Bool
  var workflowController: AMWorkflowController?
  init(frame frameRect: NSRect)
  init?(coder coder: NSCoder)
  convenience init()
}
struct __AMWorkflowViewFlags {
  var ignoreSubviewFrameChanges: ObjCBool
  var editingEnabled: ObjCBool
  var reserved: Int
  init()
  init(ignoreSubviewFrameChanges ignoreSubviewFrameChanges: ObjCBool, editingEnabled editingEnabled: ObjCBool, reserved reserved: Int)
}
