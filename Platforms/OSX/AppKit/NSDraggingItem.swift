
@available(OSX 10.7, *)
let NSDraggingImageComponentIconKey: String
@available(OSX 10.7, *)
let NSDraggingImageComponentLabelKey: String
@available(OSX 10.7, *)
class NSDraggingImageComponent : NSObject {
  init(key: String)
  var key: String
  var contents: AnyObject?
  var frame: NSRect
  convenience init()
}
@available(OSX 10.7, *)
class NSDraggingItem : NSObject {
  init(pasteboardWriter: NSPasteboardWriting)
  var item: AnyObject { get }
  var draggingFrame: NSRect
  var imageComponentsProvider: (() -> [NSDraggingImageComponent])?
  func setDraggingFrame(frame: NSRect, contents: AnyObject)
  var imageComponents: [NSDraggingImageComponent]? { get }
  convenience init()
}
