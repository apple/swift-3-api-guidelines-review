
@available(OSX 10.7, *)
let NSDraggingImageComponentIconKey: String
@available(OSX 10.7, *)
let NSDraggingImageComponentLabelKey: String
@available(OSX 10.7, *)
class NSDraggingImageComponent : Object {
  init(key: String)
  var key: String
  var contents: AnyObject?
  var frame: Rect
  convenience init()
}
@available(OSX 10.7, *)
class NSDraggingItem : Object {
  init(pasteboardWriter: NSPasteboardWriting)
  var item: AnyObject { get }
  var draggingFrame: Rect
  var imageComponentsProvider: (() -> [NSDraggingImageComponent])?
  func setDraggingFrame(frame: Rect, contents: AnyObject)
  var imageComponents: [NSDraggingImageComponent]? { get }
  convenience init()
}
