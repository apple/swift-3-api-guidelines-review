
var NSImageRepMatchesDevice: Int { get }
class NSImageRep : NSObject, NSCopying, NSCoding {
  init()
  init?(coder: NSCoder)
  func draw() -> Bool
  func drawAtPoint(point: NSPoint) -> Bool
  func drawInRect(rect: NSRect) -> Bool
  @available(OSX 10.6, *)
  func drawInRect(dstSpacePortionRect: NSRect, fromRect srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?) -> Bool
  var size: NSSize
  var alpha: Bool
  var opaque: Bool
  var colorSpaceName: String
  var bitsPerSample: Int
  var pixelsWide: Int
  var pixelsHigh: Int
  class func registerImageRepClass(imageRepClass: AnyClass)
  class func unregisterImageRepClass(imageRepClass: AnyClass)
  class func registeredImageRepClasses() -> [AnyClass]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForFileType(type: String) -> AnyClass?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForPasteboardType(type: String) -> AnyClass?
  @available(OSX 10.5, *)
  class func imageRepClassForType(type: String) -> AnyClass?
  class func imageRepClassForData(data: NSData) -> AnyClass?
  class func canInitWithData(data: NSData) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredPasteboardTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imageFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imagePasteboardTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageUnfilteredTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageTypes() -> [String]
  class func canInitWithPasteboard(pasteboard: NSPasteboard) -> Bool
  class func imageRepsWithContentsOfFile(filename: String) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfFile filename: String)
  class func imageRepsWithContentsOfURL(url: NSURL) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfURL url: NSURL)
  class func imageRepsWithPasteboard(pasteboard: NSPasteboard) -> [NSImageRep]?
  /*not inherited*/ init?(pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  func CGImageForProposedRect(proposedDestRect: UnsafeMutablePointer<NSRect>, context: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
struct __repFlags {
  var hasAlpha: UInt32
  var isOpaque: UInt32
  @available(*, deprecated)
  var cacheParamsComputed: UInt32
  @available(*, deprecated)
  var cacheAlphaComputed: UInt32
  var loadState: UInt32
  @available(*, deprecated)
  var keepCacheWindow: UInt32
  var reserved: UInt32
  var bitsPerSample: UInt32
  var gsaved: UInt32
  init()
  init(hasAlpha: UInt32, isOpaque: UInt32, cacheParamsComputed: UInt32, cacheAlphaComputed: UInt32, loadState: UInt32, keepCacheWindow: UInt32, reserved: UInt32, bitsPerSample: UInt32, gsaved: UInt32)
}
let NSImageRepRegistryDidChangeNotification: String
