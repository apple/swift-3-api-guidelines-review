
@available(OSX 10.7, *)
class NSDraggingSession : Object {
  var draggingFormation: NSDraggingFormation
  var animatesToStartingPositionsOnCancelOrFail: Bool
  var draggingLeaderIndex: Int
  var draggingPasteboard: NSPasteboard { get }
  var draggingSequenceNumber: Int { get }
  var draggingLocation: Point { get }
  func enumerateDraggingItems(enumOpts: NSDraggingItemEnumerationOptions = [], forView view: NSView?, classes classArray: [AnyClass], searchOptions: [String : AnyObject] = [:], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
}
