
var NSImageRepMatchesDevice: Int { get }
class NSImageRep : NSObject, NSCopying, NSCoding {
  init?(coder coder: NSCoder)
  func draw() -> Bool
  func draw(at point: NSPoint) -> Bool
  func draw(in rect: NSRect) -> Bool
  @available(OSX 10.6, *)
  func draw(in dstSpacePortionRect: NSRect, from srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints hints: [String : AnyObject]?) -> Bool
  var size: NSSize
  var hasAlpha: Bool
  var isOpaque: Bool
  var colorSpaceName: String
  var bitsPerSample: Int
  var pixelsWide: Int
  var pixelsHigh: Int
  class func registerClass(_ imageRepClass: AnyClass)
  class func unregisterImageRepClass(_ imageRepClass: AnyClass)
  class func registeredImageRepClasses() -> [AnyClass]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClass(forFileType type: String) -> AnyClass?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClass(forPasteboardType type: String) -> AnyClass?
  @available(OSX 10.5, *)
  class func imageRepClass(forType type: String) -> AnyClass?
  class func imageRepClass(for data: NSData) -> AnyClass?
  class func canInit(with data: NSData) -> Bool
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
  class func canInit(with pasteboard: NSPasteboard) -> Bool
  class func imageReps(withContentsOfFile filename: String) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfFile filename: String)
  class func imageReps(withContentsOf url: NSURL) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOf url: NSURL)
  class func imageReps(with pasteboard: NSPasteboard) -> [NSImageRep]?
  /*not inherited*/ init?(pasteboard pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  func cgImage(forProposedRect proposedDestRect: UnsafeMutablePointer<NSRect>, context context: NSGraphicsContext?, hints hints: [String : AnyObject]?) -> CGImage?
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
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
