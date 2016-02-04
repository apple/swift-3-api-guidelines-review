
@available(OSX 10.7, *)
class NSDraggingSession : NSObject {
  var draggingFormation: NSDraggingFormation
  var animatesToStartingPositionsOnCancelOrFail: Bool
  var draggingLeaderIndex: Int
  var draggingPasteboard: NSPasteboard { get }
  var draggingSequenceNumber: Int { get }
  var draggingLocation: NSPoint { get }
  func enumerateDraggingItemsWithOptions(enumOpts: NSDraggingItemEnumerationOptions, forView view: NSView?, classes classArray: [AnyClass], searchOptions: [String : AnyObject], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
}
