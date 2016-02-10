
var NSImageRepMatchesDevice: Int { get }
class NSImageRep : Object, Copying, Coding {
  init()
  init?(coder: Coder)
  func draw() -> Bool
  func draw(at point: Point) -> Bool
  func draw(in rect: Rect) -> Bool
  @available(OSX 10.6, *)
  func draw(in dstSpacePortionRect: Rect, from srcSpacePortionRect: Rect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?) -> Bool
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
  class func imageRepClass(forFileType type: String) -> AnyClass?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClass(forPasteboardType type: String) -> AnyClass?
  @available(OSX 10.5, *)
  class func imageRepClass(forType type: String) -> AnyClass?
  class func imageRepClass(for data: Data) -> AnyClass?
  class func canInit(with data: Data) -> Bool
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
  class func imageRepsWithContents(ofFile filename: String) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfFile filename: String)
  class func imageRepsWithContents(of url: URL) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOf url: URL)
  class func imageReps(with pasteboard: NSPasteboard) -> [NSImageRep]?
  /*not inherited*/ init?(pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  func cgImage(forProposedRect proposedDestRect: UnsafeMutablePointer<Rect>, context: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  func copy(with zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
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
