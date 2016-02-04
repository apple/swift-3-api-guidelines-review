
struct NSDragOperation : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSDragOperation { get }
  static var Copy: NSDragOperation { get }
  static var Link: NSDragOperation { get }
  static var Generic: NSDragOperation { get }
  static var Private: NSDragOperation { get }
  static var Move: NSDragOperation { get }
  static var Delete: NSDragOperation { get }
  static var Every: NSDragOperation { get }
  @available(OSX, introduced=10.0, deprecated=10.10)
  static var All_Obsolete: NSDragOperation { get }
  @available(OSX, introduced=10.0, deprecated=10.10)
  static var All: NSDragOperation { get }
}
@available(OSX 10.7, *)
enum NSDraggingFormation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case Pile
  case List
  case Stack
}
@available(OSX 10.7, *)
enum NSDraggingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OutsideApplication
  case WithinApplication
}
@available(OSX 10.7, *)
struct NSDraggingItemEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSDraggingItemEnumerationOptions { get }
  static var ClearNonenumeratedImages: NSDraggingItemEnumerationOptions { get }
}
@available(OSX 10.11, *)
enum NSSpringLoadingHighlight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Standard
  case Emphasized
}
protocol NSDraggingInfo : NSObjectProtocol {
  func draggingDestinationWindow() -> NSWindow?
  func draggingSourceOperationMask() -> NSDragOperation
  func draggingLocation() -> NSPoint
  func draggedImageLocation() -> NSPoint
  func draggedImage() -> NSImage?
  func draggingPasteboard() -> NSPasteboard
  func draggingSource() -> AnyObject?
  func draggingSequenceNumber() -> Int
  func slideDraggedImageTo(screenPoint: NSPoint)
  func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
  @available(OSX 10.7, *)
  var draggingFormation: NSDraggingFormation { get set }
  @available(OSX 10.7, *)
  var animatesToDestination: Bool { get set }
  @available(OSX 10.7, *)
  var numberOfValidItemsForDrop: Int { get set }
  @available(OSX 10.7, *)
  func enumerateDraggingItemsWithOptions(enumOpts: NSDraggingItemEnumerationOptions, forView view: NSView, classes classArray: [AnyClass], searchOptions: [String : AnyObject], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  var springLoadingHighlight: NSSpringLoadingHighlight { get }
  @available(OSX 10.11, *)
  func resetSpringLoading()
}
protocol NSDraggingDestination : NSObjectProtocol {
  optional func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingUpdated(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingExited(sender: NSDraggingInfo?)
  optional func prepareForDragOperation(sender: NSDraggingInfo) -> Bool
  optional func performDragOperation(sender: NSDraggingInfo) -> Bool
  optional func concludeDragOperation(sender: NSDraggingInfo?)
  optional func draggingEnded(sender: NSDraggingInfo?)
  optional func wantsPeriodicDraggingUpdates() -> Bool
  @available(OSX 10.7, *)
  optional func updateDraggingItemsForDrag(sender: NSDraggingInfo?)
}
protocol NSDraggingSource : NSObjectProtocol {
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
}
@available(OSX 10.11, *)
struct NSSpringLoadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Disabled: NSSpringLoadingOptions { get }
  static var Enabled: NSSpringLoadingOptions { get }
  static var ContinuousActivation: NSSpringLoadingOptions { get }
  static var NoHover: NSSpringLoadingOptions { get }
}
protocol NSSpringLoadingDestination : NSObjectProtocol {
  @available(OSX 10.11, *)
  func springLoadingActivated(activated: Bool, draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  func springLoadingHighlightChanged(draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func springLoadingEntered(draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(OSX 10.11, *)
  optional func springLoadingUpdated(draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(OSX 10.11, *)
  optional func springLoadingExited(draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func draggingEnded(draggingInfo: NSDraggingInfo)
}
extension NSObject {
  class func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
  func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
}
