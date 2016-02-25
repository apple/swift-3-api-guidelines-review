
var NSImageRepMatchesDevice: Int { get }
class NSImageRep : NSObject, NSCopying, NSCoding {
  init?(coder coder: NSCoder)
  func draw() -> Bool
  func drawAtPoint(_ point: NSPoint) -> Bool
  func drawInRect(_ rect: NSRect) -> Bool
  @available(OSX 10.6, *)
  func drawInRect(_ dstSpacePortionRect: NSRect, fromRect srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints hints: [String : AnyObject]?) -> Bool
  var size: NSSize
  var alpha: Bool
  var opaque: Bool
  var colorSpaceName: String
  var bitsPerSample: Int
  var pixelsWide: Int
  var pixelsHigh: Int
  class func registerImageRepClass(_ imageRepClass: AnyClass)
  class func unregisterImageRepClass(_ imageRepClass: AnyClass)
  class func registeredImageRepClasses() -> [AnyClass]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForFileType(_ type: String) -> AnyClass?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForPasteboardType(_ type: String) -> AnyClass?
  @available(OSX 10.5, *)
  class func imageRepClassForType(_ type: String) -> AnyClass?
  class func imageRepClassForData(_ data: NSData) -> AnyClass?
  class func canInitWithData(_ data: NSData) -> Bool
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
  class func canInitWithPasteboard(_ pasteboard: NSPasteboard) -> Bool
  class func imageRepsWithContentsOfFile(_ filename: String) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfFile filename: String)
  class func imageRepsWithContentsOfURL(_ url: NSURL) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfURL url: NSURL)
  class func imageRepsWithPasteboard(_ pasteboard: NSPasteboard) -> [NSImageRep]?
  /*not inherited*/ init?(pasteboard pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  func CGImageForProposedRect(_ proposedDestRect: UnsafeMutablePointer<NSRect>, context context: NSGraphicsContext?, hints hints: [String : AnyObject]?) -> CGImage?
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
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
  init(hasAlpha hasAlpha: UInt32, isOpaque isOpaque: UInt32, cacheParamsComputed cacheParamsComputed: UInt32, cacheAlphaComputed cacheAlphaComputed: UInt32, loadState loadState: UInt32, keepCacheWindow keepCacheWindow: UInt32, reserved reserved: UInt32, bitsPerSample bitsPerSample: UInt32, gsaved gsaved: UInt32)
}
let NSImageRepRegistryDidChangeNotification: String
