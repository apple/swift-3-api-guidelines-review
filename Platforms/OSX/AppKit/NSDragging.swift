
struct NSDragOperation : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: NSDragOperation { get }
  static var copy: NSDragOperation { get }
  static var link: NSDragOperation { get }
  static var generic: NSDragOperation { get }
  static var `private`: NSDragOperation { get }
  static var move: NSDragOperation { get }
  static var delete: NSDragOperation { get }
  static var every: NSDragOperation { get }
  @available(OSX, introduced=10.0, deprecated=10.10)
  static var all_Obsolete: NSDragOperation { get }
  @available(OSX, introduced=10.0, deprecated=10.10)
  static var all: NSDragOperation { get }
}
@available(OSX 10.7, *)
enum NSDraggingFormation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case none
  case pile
  case list
  case stack
}
@available(OSX 10.7, *)
enum NSDraggingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case outsideApplication
  case withinApplication
}
@available(OSX 10.7, *)
struct NSDraggingItemEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var concurrent: NSDraggingItemEnumerationOptions { get }
  static var clearNonenumeratedImages: NSDraggingItemEnumerationOptions { get }
}
@available(OSX 10.11, *)
enum NSSpringLoadingHighlight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case standard
  case emphasized
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
  func slideDraggedImage(to screenPoint: NSPoint)
  func namesOfPromisedFilesDropped(atDestination dropDestination: NSURL) -> [String]?
  @available(OSX 10.7, *)
  var draggingFormation: NSDraggingFormation { get set }
  @available(OSX 10.7, *)
  var animatesToDestination: Bool { get set }
  @available(OSX 10.7, *)
  var numberOfValidItemsForDrop: Int { get set }
  @available(OSX 10.7, *)
  func enumerateDraggingItems(enumOpts: NSDraggingItemEnumerationOptions = [], for view: NSView, classes classArray: [AnyClass], searchOptions: [String : AnyObject] = [:], using block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  var springLoadingHighlight: NSSpringLoadingHighlight { get }
  @available(OSX 10.11, *)
  func resetSpringLoading()
}
protocol NSDraggingDestination : NSObjectProtocol {
  optional func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingUpdated(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingExited(sender: NSDraggingInfo?)
  optional func prepare(forDragOperation sender: NSDraggingInfo) -> Bool
  optional func performDragOperation(sender: NSDraggingInfo) -> Bool
  optional func concludeDragOperation(sender: NSDraggingInfo?)
  optional func draggingEnded(sender: NSDraggingInfo?)
  optional func wantsPeriodicDraggingUpdates() -> Bool
  @available(OSX 10.7, *)
  optional func updateDraggingItems(forDrag sender: NSDraggingInfo?)
}
protocol NSDraggingSource : NSObjectProtocol {
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func ignoreModifierKeys(for session: NSDraggingSession) -> Bool
}
@available(OSX 10.11, *)
struct NSSpringLoadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var disabled: NSSpringLoadingOptions { get }
  static var enabled: NSSpringLoadingOptions { get }
  static var continuousActivation: NSSpringLoadingOptions { get }
  static var noHover: NSSpringLoadingOptions { get }
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
  class func namesOfPromisedFilesDropped(atDestination dropDestination: NSURL) -> [String]?
  func namesOfPromisedFilesDropped(atDestination dropDestination: NSURL) -> [String]?
}
