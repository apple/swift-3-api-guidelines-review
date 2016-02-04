
var NSImageRepMatchesDevice: Int { get }
class NSImageRep : Object, Copying, Coding {
  init()
  init?(coder: Coder)
  func draw() -> Bool
  func drawAt(point: Point) -> Bool
  func drawIn(rect: Rect) -> Bool
  @available(OSX 10.6, *)
  func drawIn(dstSpacePortionRect: Rect, from srcSpacePortionRect: Rect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?) -> Bool
  var size: Size
  var hasAlpha: Bool
  var isOpaque: Bool
  var colorSpaceName: String
  var bitsPerSample: Int
  var pixelsWide: Int
  var pixelsHigh: Int
  class func registerClass(imageRepClass: AnyClass)
  class func unregisterImageRepClass(imageRepClass: AnyClass)
  class func registeredImageRepClasses() -> [AnyClass]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForFileType(type: String) -> AnyClass?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForPasteboardType(type: String) -> AnyClass?
  @available(OSX 10.5, *)
  class func imageRepClassForType(type: String) -> AnyClass?
  class func imageRepClassFor(data: Data) -> AnyClass?
  class func canInitWith(data: Data) -> Bool
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
  class func canInitWith(pasteboard: NSPasteboard) -> Bool
  class func imageRepsWithContentsOfFile(filename: String) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfFile filename: String)
  class func imageRepsWithContentsOf(url: URL) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOf url: URL)
  class func imageRepsWith(pasteboard: NSPasteboard) -> [NSImageRep]?
  /*not inherited*/ init?(pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  func cgImageForProposedRect(proposedDestRect: UnsafeMutablePointer<Rect>, context: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
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
