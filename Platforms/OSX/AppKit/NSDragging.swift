
struct NSDragOperation : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case Pile
  case List
  case Stack
}
@available(OSX 10.7, *)
enum NSDraggingContext : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case OutsideApplication
  case WithinApplication
}
@available(OSX 10.7, *)
struct NSDraggingItemEnumerationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSDraggingItemEnumerationOptions { get }
  static var ClearNonenumeratedImages: NSDraggingItemEnumerationOptions { get }
}
@available(OSX 10.11, *)
enum NSSpringLoadingHighlight : Int {
  init?(rawValue rawValue: Int)
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
  func slideDraggedImageTo(_ screenPoint: NSPoint)
  func namesOfPromisedFilesDroppedAtDestination(_ dropDestination: NSURL) -> [String]?
  @available(OSX 10.7, *)
  var draggingFormation: NSDraggingFormation { get set }
  @available(OSX 10.7, *)
  var animatesToDestination: Bool { get set }
  @available(OSX 10.7, *)
  var numberOfValidItemsForDrop: Int { get set }
  @available(OSX 10.7, *)
  func enumerateDraggingItemsWithOptions(_ enumOpts: NSDraggingItemEnumerationOptions, forView view: NSView, classes classArray: [AnyClass], searchOptions searchOptions: [String : AnyObject], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  var springLoadingHighlight: NSSpringLoadingHighlight { get }
  @available(OSX 10.11, *)
  func resetSpringLoading()
}
protocol NSDraggingDestination : NSObjectProtocol {
  optional func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingUpdated(_ sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingExited(_ sender: NSDraggingInfo?)
  optional func prepareForDragOperation(_ sender: NSDraggingInfo) -> Bool
  optional func performDragOperation(_ sender: NSDraggingInfo) -> Bool
  optional func concludeDragOperation(_ sender: NSDraggingInfo?)
  optional func draggingEnded(_ sender: NSDraggingInfo?)
  optional func wantsPeriodicDraggingUpdates() -> Bool
  @available(OSX 10.7, *)
  optional func updateDraggingItemsForDrag(_ sender: NSDraggingInfo?)
}
protocol NSDraggingSource : NSObjectProtocol {
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  optional func draggingSession(_ session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(_ session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(_ session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func ignoreModifierKeysForDraggingSession(_ session: NSDraggingSession) -> Bool
}
@available(OSX 10.11, *)
struct NSSpringLoadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Disabled: NSSpringLoadingOptions { get }
  static var Enabled: NSSpringLoadingOptions { get }
  static var ContinuousActivation: NSSpringLoadingOptions { get }
  static var NoHover: NSSpringLoadingOptions { get }
}
protocol NSSpringLoadingDestination : NSObjectProtocol {
  @available(OSX 10.11, *)
  func springLoadingActivated(_ activated: Bool, draggingInfo draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  func springLoadingHighlightChanged(_ draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func springLoadingEntered(_ draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(OSX 10.11, *)
  optional func springLoadingUpdated(_ draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(OSX 10.11, *)
  optional func springLoadingExited(_ draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func draggingEnded(_ draggingInfo: NSDraggingInfo)
}
extension NSObject {
  class func namesOfPromisedFilesDroppedAtDestination(_ dropDestination: NSURL) -> [String]?
  func namesOfPromisedFilesDroppedAtDestination(_ dropDestination: NSURL) -> [String]?
}
