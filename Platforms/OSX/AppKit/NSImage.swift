
enum NSImageLoadStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Completed
  case Cancelled
  case InvalidData
  case UnexpectedEOF
  case ReadError
}
enum NSImageCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Always
  case BySize
  case Never
}
@available(OSX 10.10, *)
enum NSImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stretch
  case Tile
}
class NSImage : Object, Copying, Coding, SecureCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: String)
  init(size aSize: Size)
  init?(data: Data)
  init?(contentsOfFile fileName: String)
  init?(contentsOf url: URL)
  init?(byReferencingFile fileName: String)
  init(byReferencingURL url: URL)
  @available(OSX 10.5, *)
  init(iconRef: IconRef)
  init?(pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  init?(dataIgnoringOrientation data: Data)
  @available(OSX 10.8, *)
  /*not inherited*/ init(size: Size, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: (Rect) -> Bool)
  var size: Size
  func setName(string: String?) -> Bool
  func name() -> String?
  @NSCopying var backgroundColor: NSColor
  var usesEPSOnResolutionMismatch: Bool
  var prefersColorMatch: Bool
  var matchesOnMultipleResolution: Bool
  @available(OSX 10.7, *)
  var matchesOnlyOnBestFittingAxis: Bool
  func drawAt(point: Point, from fromRect: Rect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawIn(rect: Rect, from fromRect: Rect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  @available(OSX 10.6, *)
  func drawIn(dstSpacePortionRect: Rect, from srcSpacePortionRect: Rect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?)
  func drawRepresentation(imageRep: NSImageRep, in rect: Rect) -> Bool
  @available(OSX 10.9, *)
  func drawIn(rect: Rect)
  func recache()
  var tiffRepresentation: Data? { get }
  func tiffRepresentationUsing(comp: NSTIFFCompression, factor aFloat: Float) -> Data?
  var representations: [NSImageRep] { get }
  func addRepresentations(imageReps: [NSImageRep])
  func addRepresentation(imageRep: NSImageRep)
  func removeRepresentation(imageRep: NSImageRep)
  var isValid: Bool { get }
  func lockFocus()
  @available(OSX 10.6, *)
  func lockFocusFlipped(flipped: Bool)
  func unlockFocus()
  unowned(unsafe) var delegate: @sil_unmanaged NSImageDelegate?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredPasteboardTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imageFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imagePasteboardTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageUnfilteredTypes() -> [String]
  class func canInitWith(pasteboard: NSPasteboard) -> Bool
  func cancelIncrementalLoad()
  var cacheMode: NSImageCacheMode
  @available(OSX 10.5, *)
  var alignmentRect: Rect
  var isTemplate: Bool
  @available(OSX 10.6, *)
  var accessibilityDescription: String?
  @available(OSX 10.6, *)
  init(cgImage: CGImage, size: Size)
  @available(OSX 10.6, *)
  func cgImageFor(proposedRect proposedDestRect: UnsafeMutablePointer<Rect>, context referenceContext: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  @available(OSX 10.6, *)
  func bestRepresentationFor(rect: Rect, context referenceContext: NSGraphicsContext?, hints: [String : AnyObject]?) -> NSImageRep?
  @available(OSX 10.6, *)
  func hitTest(testRectDestSpace: Rect, withImageDestinationRect imageRectDestSpace: Rect, context: NSGraphicsContext?, hints: [String : AnyObject]?, flipped: Bool) -> Bool
  @available(OSX 10.7, *)
  func recommendedLayerContentsScale(preferredContentsScale: CGFloat) -> CGFloat
  @available(OSX 10.7, *)
  func layerContentsFor(contentsScale layerContentsScale: CGFloat) -> AnyObject
  @available(OSX 10.10, *)
  var capInsets: EdgeInsets
  @available(OSX 10.10, *)
  var resizingMode: NSImageResizingMode
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func supportsSecureCoding() -> Bool
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListFor(type type: String) -> AnyObject?
}

extension NSImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
struct __imageFlags {
  var scalable: UInt32
  var dataRetained: UInt32
  var uniqueWindow: UInt32
  var sizeWasExplicitlySet: UInt32
  var builtIn: UInt32
  var needsToExpand: UInt32
  var useEPSOnResolutionMismatch: UInt32
  var matchesOnlyOnBestFittingAxis: UInt32
  var colorMatchPreferred: UInt32
  var multipleResolutionMatching: UInt32
  var focusedWhilePrinting: UInt32
  var archiveByName: UInt32
  var unboundedCacheDepth: UInt32
  var flipped: UInt32
  var aliased: UInt32
  var dirtied: UInt32
  var cacheMode: UInt32
  var sampleMode: UInt32
  var resMatchPreferred: UInt32
  var isTemplate: UInt32
  var failedToExpand: UInt32
  var reserved1: UInt32
  init()
  init(scalable: UInt32, dataRetained: UInt32, uniqueWindow: UInt32, sizeWasExplicitlySet: UInt32, builtIn: UInt32, needsToExpand: UInt32, useEPSOnResolutionMismatch: UInt32, matchesOnlyOnBestFittingAxis: UInt32, colorMatchPreferred: UInt32, multipleResolutionMatching: UInt32, focusedWhilePrinting: UInt32, archiveByName: UInt32, unboundedCacheDepth: UInt32, flipped: UInt32, aliased: UInt32, dirtied: UInt32, cacheMode: UInt32, sampleMode: UInt32, resMatchPreferred: UInt32, isTemplate: UInt32, failedToExpand: UInt32, reserved1: UInt32)
}
@available(OSX 10.6, *)
let NSImageHintCTM: String
@available(OSX 10.6, *)
let NSImageHintInterpolation: String
protocol NSImageDelegate : ObjectProtocol {
  optional func imageDidNotDraw(sender: NSImage, in aRect: Rect) -> NSImage?
  optional func image(image: NSImage, willLoadRepresentation rep: NSImageRep)
  optional func image(image: NSImage, didLoadRepresentationHeader rep: NSImageRep)
  optional func image(image: NSImage, didLoadPartOfRepresentation rep: NSImageRep, withValidRows rows: Int)
  optional func image(image: NSImage, didLoadRepresentation rep: NSImageRep, withStatus status: NSImageLoadStatus)
}
extension Bundle {
  @available(OSX 10.7, *)
  func imageFor(resource name: String) -> NSImage?
  func pathFor(imageResource name: String) -> String?
  @available(OSX 10.6, *)
  func urlFor(imageResource name: String) -> URL?
}
extension NSImage {
}
@available(OSX 10.5, *)
let NSImageNameQuickLookTemplate: String
@available(OSX 10.5, *)
let NSImageNameBluetoothTemplate: String
@available(OSX 10.5, *)
let NSImageNameIChatTheaterTemplate: String
@available(OSX 10.5, *)
let NSImageNameSlideshowTemplate: String
@available(OSX 10.5, *)
let NSImageNameActionTemplate: String
@available(OSX 10.5, *)
let NSImageNameSmartBadgeTemplate: String
@available(OSX 10.5, *)
let NSImageNameIconViewTemplate: String
@available(OSX 10.5, *)
let NSImageNameListViewTemplate: String
@available(OSX 10.5, *)
let NSImageNameColumnViewTemplate: String
@available(OSX 10.5, *)
let NSImageNameFlowViewTemplate: String
@available(OSX 10.5, *)
let NSImageNamePathTemplate: String
@available(OSX 10.5, *)
let NSImageNameInvalidDataFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameLockLockedTemplate: String
@available(OSX 10.5, *)
let NSImageNameLockUnlockedTemplate: String
@available(OSX 10.5, *)
let NSImageNameGoRightTemplate: String
@available(OSX 10.5, *)
let NSImageNameGoLeftTemplate: String
@available(OSX 10.5, *)
let NSImageNameRightFacingTriangleTemplate: String
@available(OSX 10.5, *)
let NSImageNameLeftFacingTriangleTemplate: String
@available(OSX 10.5, *)
let NSImageNameAddTemplate: String
@available(OSX 10.5, *)
let NSImageNameRemoveTemplate: String
@available(OSX 10.5, *)
let NSImageNameRevealFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameFollowLinkFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameEnterFullScreenTemplate: String
@available(OSX 10.5, *)
let NSImageNameExitFullScreenTemplate: String
@available(OSX 10.5, *)
let NSImageNameStopProgressTemplate: String
@available(OSX 10.5, *)
let NSImageNameStopProgressFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameRefreshTemplate: String
@available(OSX 10.5, *)
let NSImageNameRefreshFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameBonjour: String
@available(OSX 10.5, *)
let NSImageNameComputer: String
@available(OSX 10.5, *)
let NSImageNameFolderBurnable: String
@available(OSX 10.5, *)
let NSImageNameFolderSmart: String
@available(OSX 10.6, *)
let NSImageNameFolder: String
@available(OSX 10.5, *)
let NSImageNameNetwork: String
@available(OSX 10.6, *)
let NSImageNameMobileMe: String
@available(OSX 10.5, *)
let NSImageNameMultipleDocuments: String
@available(OSX 10.5, *)
let NSImageNameUserAccounts: String
@available(OSX 10.5, *)
let NSImageNamePreferencesGeneral: String
@available(OSX 10.5, *)
let NSImageNameAdvanced: String
@available(OSX 10.5, *)
let NSImageNameInfo: String
@available(OSX 10.5, *)
let NSImageNameFontPanel: String
@available(OSX 10.5, *)
let NSImageNameColorPanel: String
@available(OSX 10.5, *)
let NSImageNameUser: String
@available(OSX 10.5, *)
let NSImageNameUserGroup: String
@available(OSX 10.5, *)
let NSImageNameEveryone: String
@available(OSX 10.6, *)
let NSImageNameUserGuest: String
@available(OSX 10.6, *)
let NSImageNameMenuOnStateTemplate: String
@available(OSX 10.6, *)
let NSImageNameMenuMixedStateTemplate: String
@available(OSX 10.6, *)
let NSImageNameApplicationIcon: String
@available(OSX 10.6, *)
let NSImageNameTrashEmpty: String
@available(OSX 10.6, *)
let NSImageNameTrashFull: String
@available(OSX 10.6, *)
let NSImageNameHomeTemplate: String
@available(OSX 10.6, *)
let NSImageNameBookmarksTemplate: String
@available(OSX 10.6, *)
let NSImageNameCaution: String
@available(OSX 10.6, *)
let NSImageNameStatusAvailable: String
@available(OSX 10.6, *)
let NSImageNameStatusPartiallyAvailable: String
@available(OSX 10.6, *)
let NSImageNameStatusUnavailable: String
@available(OSX 10.6, *)
let NSImageNameStatusNone: String
@available(OSX 10.8, *)
let NSImageNameShareTemplate: String
