
enum NSImageLoadStatus : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Completed
  case Cancelled
  case InvalidData
  case UnexpectedEOF
  case ReadError
}
enum NSImageCacheMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Always
  case BySize
  case Never
}
@available(OSX 10.10, *)
enum NSImageResizingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Stretch
  case Tile
}
class NSImage : NSObject, NSCopying, NSCoding, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: String)
  init(size aSize: NSSize)
  init?(data data: NSData)
  init?(contentsOfFile fileName: String)
  init?(contentsOfURL url: NSURL)
  init?(byReferencingFile fileName: String)
  init(byReferencingURL url: NSURL)
  @available(OSX 10.5, *)
  init(iconRef iconRef: IconRef)
  init?(pasteboard pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  init?(dataIgnoringOrientation data: NSData)
  @available(OSX 10.8, *)
  /*not inherited*/ init(size size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler drawingHandler: (NSRect) -> Bool)
  var size: NSSize
  func setName(_ string: String?) -> Bool
  func name() -> String?
  @NSCopying var backgroundColor: NSColor
  var usesEPSOnResolutionMismatch: Bool
  var prefersColorMatch: Bool
  var matchesOnMultipleResolution: Bool
  @available(OSX 10.7, *)
  var matchesOnlyOnBestFittingAxis: Bool
  func drawAtPoint(_ point: NSPoint, fromRect fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawInRect(_ rect: NSRect, fromRect fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  @available(OSX 10.6, *)
  func drawInRect(_ dstSpacePortionRect: NSRect, fromRect srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints hints: [String : AnyObject]?)
  func drawRepresentation(_ imageRep: NSImageRep, inRect rect: NSRect) -> Bool
  @available(OSX 10.9, *)
  func drawInRect(_ rect: NSRect)
  func recache()
  var TIFFRepresentation: NSData? { get }
  func TIFFRepresentationUsingCompression(_ comp: NSTIFFCompression, factor aFloat: Float) -> NSData?
  var representations: [NSImageRep] { get }
  func addRepresentations(_ imageReps: [NSImageRep])
  func addRepresentation(_ imageRep: NSImageRep)
  func removeRepresentation(_ imageRep: NSImageRep)
  var valid: Bool { get }
  func lockFocus()
  @available(OSX 10.6, *)
  func lockFocusFlipped(_ flipped: Bool)
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
  class func canInitWithPasteboard(_ pasteboard: NSPasteboard) -> Bool
  func cancelIncrementalLoad()
  var cacheMode: NSImageCacheMode
  @available(OSX 10.5, *)
  var alignmentRect: NSRect
  var template: Bool
  @available(OSX 10.6, *)
  var accessibilityDescription: String?
  @available(OSX 10.6, *)
  init(CGImage cgImage: CGImage, size size: NSSize)
  @available(OSX 10.6, *)
  func CGImageForProposedRect(_ proposedDestRect: UnsafeMutablePointer<NSRect>, context referenceContext: NSGraphicsContext?, hints hints: [String : AnyObject]?) -> CGImage?
  @available(OSX 10.6, *)
  func bestRepresentationForRect(_ rect: NSRect, context referenceContext: NSGraphicsContext?, hints hints: [String : AnyObject]?) -> NSImageRep?
  @available(OSX 10.6, *)
  func hitTestRect(_ testRectDestSpace: NSRect, withImageDestinationRect imageRectDestSpace: NSRect, context context: NSGraphicsContext?, hints hints: [String : AnyObject]?, flipped flipped: Bool) -> Bool
  @available(OSX 10.7, *)
  func recommendedLayerContentsScale(_ preferredContentsScale: CGFloat) -> CGFloat
  @available(OSX 10.7, *)
  func layerContentsForContentsScale(_ layerContentsScale: CGFloat) -> AnyObject
  @available(OSX 10.10, *)
  var capInsets: NSEdgeInsets
  @available(OSX 10.10, *)
  var resizingMode: NSImageResizingMode
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func supportsSecureCoding() -> Bool
  class func readableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(_ type: String) -> AnyObject?
}

extension NSImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
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
  init(scalable scalable: UInt32, dataRetained dataRetained: UInt32, uniqueWindow uniqueWindow: UInt32, sizeWasExplicitlySet sizeWasExplicitlySet: UInt32, builtIn builtIn: UInt32, needsToExpand needsToExpand: UInt32, useEPSOnResolutionMismatch useEPSOnResolutionMismatch: UInt32, matchesOnlyOnBestFittingAxis matchesOnlyOnBestFittingAxis: UInt32, colorMatchPreferred colorMatchPreferred: UInt32, multipleResolutionMatching multipleResolutionMatching: UInt32, focusedWhilePrinting focusedWhilePrinting: UInt32, archiveByName archiveByName: UInt32, unboundedCacheDepth unboundedCacheDepth: UInt32, flipped flipped: UInt32, aliased aliased: UInt32, dirtied dirtied: UInt32, cacheMode cacheMode: UInt32, sampleMode sampleMode: UInt32, resMatchPreferred resMatchPreferred: UInt32, isTemplate isTemplate: UInt32, failedToExpand failedToExpand: UInt32, reserved1 reserved1: UInt32)
}
@available(OSX 10.6, *)
let NSImageHintCTM: String
@available(OSX 10.6, *)
let NSImageHintInterpolation: String
protocol NSImageDelegate : NSObjectProtocol {
  optional func imageDidNotDraw(_ sender: NSImage, inRect aRect: NSRect) -> NSImage?
  optional func image(_ image: NSImage, willLoadRepresentation rep: NSImageRep)
  optional func image(_ image: NSImage, didLoadRepresentationHeader rep: NSImageRep)
  optional func image(_ image: NSImage, didLoadPartOfRepresentation rep: NSImageRep, withValidRows rows: Int)
  optional func image(_ image: NSImage, didLoadRepresentation rep: NSImageRep, withStatus status: NSImageLoadStatus)
}
extension NSBundle {
  @available(OSX 10.7, *)
  func imageForResource(_ name: String) -> NSImage?
  func pathForImageResource(_ name: String) -> String?
  @available(OSX 10.6, *)
  func URLForImageResource(_ name: String) -> NSURL?
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
