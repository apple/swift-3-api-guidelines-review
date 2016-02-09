
enum NSTIFFCompression : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case CCITTFAX3
  case CCITTFAX4
  case LZW
  case JPEG
  case NEXT
  case packBits
  case oldJPEG
}
enum NSBitmapImageFileType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NSTIFFFileType
  case NSBMPFileType
  case NSGIFFileType
  case NSJPEGFileType
  case NSPNGFileType
  case NSJPEG2000FileType
}
enum NSImageRepLoadStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownType
  case readingHeader
  case willNeedAllData
  case invalidData
  case unexpectedEOF
  case completed
}
struct NSBitmapFormat : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NSAlphaFirstBitmapFormat: NSBitmapFormat { get }
  static var NSAlphaNonpremultipliedBitmapFormat: NSBitmapFormat { get }
  static var NSFloatingPointSamplesBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS16BitLittleEndianBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS32BitLittleEndianBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS16BitBigEndianBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS32BitBigEndianBitmapFormat: NSBitmapFormat { get }
}
let NSImageCompressionMethod: String
let NSImageCompressionFactor: String
let NSImageDitherTransparency: String
let NSImageRGBColorTable: String
let NSImageInterlaced: String
let NSImageColorSyncProfileData: String
let NSImageFrameCount: String
let NSImageCurrentFrame: String
let NSImageCurrentFrameDuration: String
let NSImageLoopCount: String
let NSImageGamma: String
let NSImageProgressive: String
let NSImageEXIFData: String
@available(OSX 10.5, *)
let NSImageFallbackBackgroundColor: String
class NSBitmapImageRep : NSImageRep, SecureCoding {
  init?(focusedViewRect rect: Rect)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bitmapFormat: NSBitmapFormat, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  @available(OSX 10.5, *)
  init(cgImage: CGImage)
  @available(OSX 10.5, *)
  init(ciImage: CIImage)
  class func imageRepsWith(data: Data) -> [NSImageRep]
  init?(data: Data)
  var bitmapData: UnsafeMutablePointer<UInt8> { get }
  func getBitmapDataPlanes(data: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>)
  var isPlanar: Bool { get }
  var samplesPerPixel: Int { get }
  var bitsPerPixel: Int { get }
  var bytesPerRow: Int { get }
  var bytesPerPlane: Int { get }
  var numberOfPlanes: Int { get }
  var bitmapFormat: NSBitmapFormat { get }
  func getCompression(compression: UnsafeMutablePointer<NSTIFFCompression>, factor: UnsafeMutablePointer<Float>)
  func setCompression(compression: NSTIFFCompression, factor: Float)
  @NSCopying var tiffRepresentation: Data? { get }
  func tiffRepresentationUsing(comp: NSTIFFCompression, factor: Float) -> Data?
  class func tiffRepresentationOfImageRepsIn(array: [NSImageRep]) -> Data?
  class func tiffRepresentationOfImageReps(in array: [NSImageRep], usingCompression comp: NSTIFFCompression, factor: Float) -> Data?
  class func getTIFFCompressionTypes(list: UnsafeMutablePointer<UnsafePointer<NSTIFFCompression>>, count numTypes: UnsafeMutablePointer<Int>)
  class func localizedNameFor(tiffCompressionType compression: NSTIFFCompression) -> String?
  func canBeCompressedUsing(compression: NSTIFFCompression) -> Bool
  func colorize(byMappingGray midPoint: CGFloat, to midPointColor: NSColor?, blackMapping shadowColor: NSColor?, whiteMapping lightColor: NSColor?)
  init(forIncrementalLoad: ())
  func incrementalLoadFrom(data: Data, complete: Bool) -> Int
  func setColor(color: NSColor, atX x: Int, y: Int)
  func colorAt(x x: Int, y: Int) -> NSColor?
  func getPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  func setPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  @available(OSX 10.5, *)
  var cgImage: CGImage? { get }
  @available(OSX 10.6, *)
  var colorSpace: NSColorSpace { get }
  @available(OSX 10.6, *)
  func convertingTo(targetSpace: NSColorSpace, renderingIntent: NSColorRenderingIntent) -> NSBitmapImageRep?
  @available(OSX 10.6, *)
  func byRetaggingWith(newSpace: NSColorSpace) -> NSBitmapImageRep?
  init()
  init?(coder: Coder)
  class func supportsSecureCoding() -> Bool
}
struct __bitmapRepFlags {
  var bitsPerPixel: UInt32
  var isPlanar: UInt32
  var explicitPlanes: UInt32
  var imageSourceIsIndexed: UInt32
  var dataLoaded: UInt32
  var colorModel: UInt32
  var tierTwoInfoIsLoaded: UInt32
  var respectO: UInt32
  var compressionFactor: UInt32
  var imageNumber: UInt32
  var bitmapFormat: UInt32
  var cgImageIsPrimary: UInt32
  var compression: UInt32
  init()
  init(bitsPerPixel: UInt32, isPlanar: UInt32, explicitPlanes: UInt32, imageSourceIsIndexed: UInt32, dataLoaded: UInt32, colorModel: UInt32, tierTwoInfoIsLoaded: UInt32, respectO: UInt32, compressionFactor: UInt32, imageNumber: UInt32, bitmapFormat: UInt32, cgImageIsPrimary: UInt32, compression: UInt32)
}
extension NSBitmapImageRep {
  class func representationOfImageReps(in imageReps: [NSImageRep], usingType storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> Data?
  func representationUsing(storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> Data?
  func setProperty(property: String, withValue value: AnyObject?)
  func valueFor(property property: String) -> AnyObject?
}
