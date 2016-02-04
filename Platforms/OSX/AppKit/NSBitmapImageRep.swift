
enum NSTIFFCompression : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case CCITTFAX3
  case CCITTFAX4
  case LZW
  case JPEG
  case NEXT
  case PackBits
  case OldJPEG
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
  case UnknownType
  case ReadingHeader
  case WillNeedAllData
  case InvalidData
  case UnexpectedEOF
  case Completed
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
class NSBitmapImageRep : NSImageRep, NSSecureCoding {
  init?(focusedViewRect rect: NSRect)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bitmapFormat: NSBitmapFormat, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  @available(OSX 10.5, *)
  init(CGImage cgImage: CGImage)
  @available(OSX 10.5, *)
  init(CIImage ciImage: CIImage)
  class func imageRepsWithData(data: NSData) -> [NSImageRep]
  init?(data: NSData)
  var bitmapData: UnsafeMutablePointer<UInt8> { get }
  func getBitmapDataPlanes(data: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>)
  var planar: Bool { get }
  var samplesPerPixel: Int { get }
  var bitsPerPixel: Int { get }
  var bytesPerRow: Int { get }
  var bytesPerPlane: Int { get }
  var numberOfPlanes: Int { get }
  var bitmapFormat: NSBitmapFormat { get }
  func getCompression(compression: UnsafeMutablePointer<NSTIFFCompression>, factor: UnsafeMutablePointer<Float>)
  func setCompression(compression: NSTIFFCompression, factor: Float)
  @NSCopying var TIFFRepresentation: NSData? { get }
  func TIFFRepresentationUsingCompression(comp: NSTIFFCompression, factor: Float) -> NSData?
  class func TIFFRepresentationOfImageRepsInArray(array: [NSImageRep]) -> NSData?
  class func TIFFRepresentationOfImageRepsInArray(array: [NSImageRep], usingCompression comp: NSTIFFCompression, factor: Float) -> NSData?
  class func getTIFFCompressionTypes(list: UnsafeMutablePointer<UnsafePointer<NSTIFFCompression>>, count numTypes: UnsafeMutablePointer<Int>)
  class func localizedNameForTIFFCompressionType(compression: NSTIFFCompression) -> String?
  func canBeCompressedUsing(compression: NSTIFFCompression) -> Bool
  func colorizeByMappingGray(midPoint: CGFloat, toColor midPointColor: NSColor?, blackMapping shadowColor: NSColor?, whiteMapping lightColor: NSColor?)
  init(forIncrementalLoad: ())
  func incrementalLoadFromData(data: NSData, complete: Bool) -> Int
  func setColor(color: NSColor, atX x: Int, y: Int)
  func colorAtX(x: Int, y: Int) -> NSColor?
  func getPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  func setPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  @available(OSX 10.5, *)
  var CGImage: CGImage? { get }
  @available(OSX 10.6, *)
  var colorSpace: NSColorSpace { get }
  @available(OSX 10.6, *)
  func bitmapImageRepByConvertingToColorSpace(targetSpace: NSColorSpace, renderingIntent: NSColorRenderingIntent) -> NSBitmapImageRep?
  @available(OSX 10.6, *)
  func bitmapImageRepByRetaggingWithColorSpace(newSpace: NSColorSpace) -> NSBitmapImageRep?
  init()
  init?(coder: NSCoder)
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
  class func representationOfImageRepsInArray(imageReps: [NSImageRep], usingType storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> NSData?
  func representationUsingType(storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> NSData?
  func setProperty(property: String, withValue value: AnyObject?)
  func valueForProperty(property: String) -> AnyObject?
}
