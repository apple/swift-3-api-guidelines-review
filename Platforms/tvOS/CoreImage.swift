
var UNIFIED_CORE_IMAGE: Int32 { get }
@available(tvOS 5.0, *)
class CIColor : Object, SecureCoding, Copying {
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat)
  convenience init(string representation: String)
  init(cgColor c: CGColor)
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat)
  var numberOfComponents: Int { get }
  var components: UnsafePointer<CGFloat> { get }
  var alpha: CGFloat { get }
  var colorSpace: CGColorSpace { get }
  var red: CGFloat { get }
  var green: CGFloat { get }
  var blue: CGFloat { get }
  var stringRepresentation: String { get }
  convenience init()
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 5.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 5.0, *)
class CIContext : Object {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(cgContext cgctx: CGContext, options: [String : AnyObject]? = [:])
  @available(tvOS 5.0, *)
  /*not inherited*/ init(options: [String : AnyObject]? = [:])
  @available(tvOS 5.0, *)
  /*not inherited*/ init(eaglContext: EAGLContext)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(eaglContext: EAGLContext, options: [String : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice, options: [String : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  var workingColorSpace: CGColorSpace { get }
  func draw(image: CIImage, in inRect: CGRect, from fromRect: CGRect)
  func createCGImage(image: CIImage, from fromRect: CGRect) -> CGImage
  func createCGImage(image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage
  func render(image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(tvOS 5.0, *)
  func render(image: CIImage, to buffer: CVPixelBuffer)
  @available(tvOS 5.0, *)
  func render(image: CIImage, to buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(tvOS 9.0, *)
  func render(image: CIImage, to texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
  @available(tvOS 5.0, *)
  func inputImageMaximumSize() -> CGSize
  @available(tvOS 5.0, *)
  func outputImageMaximumSize() -> CGSize
  init()
}
let kCIContextOutputColorSpace: String
let kCIContextWorkingColorSpace: String
@available(tvOS 8.0, *)
let kCIContextWorkingFormat: String
@available(tvOS 9.0, *)
let kCIContextHighQualityDownsample: String
let kCIContextUseSoftwareRenderer: String
@available(tvOS 8.0, *)
let kCIContextPriorityRequestLow: String
extension CIContext {
}

/** Detects features in images.
 
 This class potentially holds onto a lot of state. Hence it may be beneficial from a performance perspective to re-use the same CIDetector instance. Specifying a CIContext when creating a detector may have an impact on performance since this context may be used when analyzing an image.
 */
@available(tvOS 5.0, *)
class CIDetector : Object {

  /** Returns a new detector instance of the given type.
   
   The type is used to specify the usage intent.
   
   The context argument specifies the CIContext to be used to operate on the image. May be nil.
   
   If the input image to -featuresInImage: is the output of a CoreImage operation, it may improve performance to specify the same context that was used to operate on that image.
   
   The detector may do image processing in this context and if the image is on the GPU and the specified context is a GPU context this may avoid additional upload to / download from the GPU. If the input image is on the CPU (or the output from a CPU based context) specifying a GPU based context (or vice versa) may reduce performance.
   
   The options parameter lets you optinally specify a accuracy / performance tradeoff. Can be nil or an empty dictionary. */
  @available(tvOS 5.0, *)
  /*not inherited*/ init(ofType type: String, context: CIContext?, options: [String : AnyObject]? = [:])

  /** Returns an array of CIFeature instances in the given image.
   The array is sorted by confidence, highest confidence first. */
  @available(tvOS 5.0, *)
  func featuresIn(image: CIImage) -> [CIFeature]

  /** Returns an array of CIFeature instances in the given image.
   The array is sorted by confidence, highest confidence first. 
   The options dictionary can contain a CIDetectorImageOrientation key value. */
  @available(tvOS 5.0, *)
  func featuresIn(image: CIImage, options: [String : AnyObject]? = [:]) -> [CIFeature]
  init()
}
@available(tvOS 5.0, *)
let CIDetectorTypeFace: String
@available(tvOS 8.0, *)
let CIDetectorTypeRectangle: String
@available(tvOS 8.0, *)
let CIDetectorTypeQRCode: String
@available(tvOS 9.0, *)
let CIDetectorTypeText: String
@available(tvOS 5.0, *)
let CIDetectorAccuracy: String
@available(tvOS 5.0, *)
let CIDetectorAccuracyLow: String
@available(tvOS 5.0, *)
let CIDetectorAccuracyHigh: String
@available(tvOS 6.0, *)
let CIDetectorTracking: String
@available(tvOS 6.0, *)
let CIDetectorMinFeatureSize: String
@available(tvOS 9.0, *)
let CIDetectorNumberOfAngles: String
@available(tvOS 5.0, *)
let CIDetectorImageOrientation: String
@available(tvOS 7.0, *)
let CIDetectorEyeBlink: String
@available(tvOS 7.0, *)
let CIDetectorSmile: String
@available(tvOS 8.0, *)
let CIDetectorFocalLength: String
@available(tvOS 8.0, *)
let CIDetectorAspectRatio: String
@available(tvOS 9.0, *)
let CIDetectorReturnSubFeatures: String

/** Generic feature found by a CIDetector. */
@available(tvOS 5.0, *)
class CIFeature : Object {

  /** The type of the feature. */
  var type: String { get }

  /** The bounds of the feature in the image it was detected in. */
  var bounds: CGRect { get }
  init()
}

/** Specifies the type of a feature that is a face. */
let CIFeatureTypeFace: String

/** Specifies the type of a feature that is a rectangle. */
let CIFeatureTypeRectangle: String

/** Specifies the type of a feature that is a QR code. */
let CIFeatureTypeQRCode: String

/** Specifies the type of a feature that is a text. */
let CIFeatureTypeText: String

/** A face feature found by a CIDetector.
 All positions are relative to the original image. */
@available(tvOS 5.0, *)
class CIFaceFeature : CIFeature {

  /** coordinates of various cardinal points within a face.
   
   Note that the left eye is the eye on the left side of the face
   from the observer's perspective. It is not the left eye from
   the subject's perspective. */
  var bounds: CGRect { get }
  var hasLeftEyePosition: Bool { get }
  var leftEyePosition: CGPoint { get }
  var hasRightEyePosition: Bool { get }
  var rightEyePosition: CGPoint { get }
  var hasMouthPosition: Bool { get }
  var mouthPosition: CGPoint { get }
  var hasTrackingID: Bool { get }
  var trackingID: Int32 { get }
  var hasTrackingFrameCount: Bool { get }
  var trackingFrameCount: Int32 { get }
  var hasFaceAngle: Bool { get }
  var faceAngle: Float { get }
  var hasSmile: Bool { get }
  var leftEyeClosed: Bool { get }
  var rightEyeClosed: Bool { get }
  init()
}

/** A rectangle feature found by a CIDetector
 All positions are relative to the original image. */
@available(tvOS 8.0, *)
class CIRectangleFeature : CIFeature {
  var bounds: CGRect { get }
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  init()
}

/** A barcode feature found by a CIDetector
 All positions are relative to the original image. */
@available(tvOS 8.0, *)
class CIQRCodeFeature : CIFeature {
  var bounds: CGRect { get }
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  var messageString: String { get }
  init()
}
@available(tvOS 9.0, *)
class CITextFeature : CIFeature {
  var bounds: CGRect { get }
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  var subFeatures: [AnyObject] { get }
  init()
}

/** Name of the filter */
let kCIAttributeFilterName: String

/** Name of the filter intended for UI display (eg. localized) */
let kCIAttributeFilterDisplayName: String

/** Description of the filter intended for UI display (eg. localized) */
@available(tvOS 9.0, *)
let kCIAttributeDescription: String

/** The version of OS X and iOS a filter was first available in. */
@available(tvOS 9.0, *)
let kCIAttributeFilterAvailable_Mac: String
@available(tvOS 9.0, *)
let kCIAttributeFilterAvailable_iOS: String

/** URL for the reference documentation of the filter. See localizedReferenceDocumentationForFilterName. */
@available(tvOS 9.0, *)
let kCIAttributeReferenceDocumentation: String

/** Array of filter category names (see below) */
let kCIAttributeFilterCategories: String

/** Class name of the filter. */
let kCIAttributeClass: String

/** The type of the attribute e.g. scalar, time, distance, etc. */
let kCIAttributeType: String

/** Minimum value for the attribute. */
let kCIAttributeMin: String

/** Maximum value for the attribute. */
let kCIAttributeMax: String

/** Minimum value for the slider. */
let kCIAttributeSliderMin: String

/** Maximum value for the slider. */
let kCIAttributeSliderMax: String

/** Default value for the slider. */
let kCIAttributeDefault: String

/** The identity value is the value at which the filter has no effect. */
let kCIAttributeIdentity: String

/** The non-localized name of the attribute. */
let kCIAttributeName: String

/** The localized name of the attribute to be used for display to the user. */
let kCIAttributeDisplayName: String

/** Key to request the desired set of controls in a filter UIView. The defined values for this key are:
    CIUISetBasic, CIUISetIntermediate, CIUISetAdvanced and CIUISetDevelopment. */
@available(tvOS 9.0, *)
let kCIUIParameterSet: String

/** Constant for requesting controls that are appropiate in an basic user scenario, meaning the bare minimum of settings to control the filter. */
@available(tvOS 9.0, *)
let kCIUISetBasic: String

/** Constant for requesting controls that are appropiate in an intermediate user scenario. */
@available(tvOS 9.0, *)
let kCIUISetIntermediate: String

/** Constant for requesting controls that are appropiate in an advanced user scenario. */
@available(tvOS 9.0, *)
let kCIUISetAdvanced: String

/** Constant for requesting controls that should only be visible for development purposes. */
@available(tvOS 9.0, *)
let kCIUISetDevelopment: String
let kCIAttributeTypeTime: String
let kCIAttributeTypeScalar: String
let kCIAttributeTypeDistance: String
let kCIAttributeTypeAngle: String
let kCIAttributeTypeBoolean: String

/** Indicates that the key uses integer values. */
@available(tvOS 5.0, *)
let kCIAttributeTypeInteger: String

/** Indicates that the key uses non negative integer values. */
@available(tvOS 5.0, *)
let kCIAttributeTypeCount: String
let kCIAttributeTypePosition: String
let kCIAttributeTypeOffset: String
let kCIAttributeTypePosition3: String
let kCIAttributeTypeRectangle: String
@available(tvOS 9.0, *)
let kCIAttributeTypeOpaqueColor: String
@available(tvOS 5.0, *)
let kCIAttributeTypeColor: String
@available(tvOS 9.0, *)
let kCIAttributeTypeGradient: String
@available(tvOS 5.0, *)
let kCIAttributeTypeImage: String
@available(tvOS 5.0, *)
let kCIAttributeTypeTransform: String
let kCICategoryDistortionEffect: String
let kCICategoryGeometryAdjustment: String
let kCICategoryCompositeOperation: String
let kCICategoryHalftoneEffect: String
let kCICategoryColorAdjustment: String
let kCICategoryColorEffect: String
let kCICategoryTransition: String
let kCICategoryTileEffect: String
let kCICategoryGenerator: String
@available(tvOS 5.0, *)
let kCICategoryReduction: String
let kCICategoryGradient: String
let kCICategoryStylize: String
let kCICategorySharpen: String
let kCICategoryBlur: String
let kCICategoryVideo: String
let kCICategoryStillImage: String
let kCICategoryInterlaced: String
let kCICategoryNonSquarePixels: String
let kCICategoryHighDynamicRange: String
let kCICategoryBuiltIn: String
@available(tvOS 9.0, *)
let kCICategoryFilterGenerator: String
@available(tvOS 5.0, *)
let kCIOutputImageKey: String
@available(tvOS 5.0, *)
let kCIInputBackgroundImageKey: String
@available(tvOS 5.0, *)
let kCIInputImageKey: String
@available(tvOS 7.0, *)
let kCIInputTimeKey: String
@available(tvOS 7.0, *)
let kCIInputTransformKey: String
@available(tvOS 7.0, *)
let kCIInputScaleKey: String
@available(tvOS 7.0, *)
let kCIInputAspectRatioKey: String
@available(tvOS 7.0, *)
let kCIInputCenterKey: String
@available(tvOS 7.0, *)
let kCIInputRadiusKey: String
@available(tvOS 7.0, *)
let kCIInputAngleKey: String
@available(tvOS 9.0, *)
let kCIInputRefractionKey: String
@available(tvOS 7.0, *)
let kCIInputWidthKey: String
@available(tvOS 7.0, *)
let kCIInputSharpnessKey: String
@available(tvOS 7.0, *)
let kCIInputIntensityKey: String
@available(tvOS 7.0, *)
let kCIInputEVKey: String
@available(tvOS 7.0, *)
let kCIInputSaturationKey: String
@available(tvOS 7.0, *)
let kCIInputColorKey: String
@available(tvOS 7.0, *)
let kCIInputBrightnessKey: String
@available(tvOS 7.0, *)
let kCIInputContrastKey: String
@available(tvOS 9.0, *)
let kCIInputBiasKey: String
@available(tvOS 9.0, *)
let kCIInputWeightsKey: String
@available(tvOS 9.0, *)
let kCIInputGradientImageKey: String
@available(tvOS 7.0, *)
let kCIInputMaskImageKey: String
@available(tvOS 9.0, *)
let kCIInputShadingImageKey: String
@available(tvOS 7.0, *)
let kCIInputTargetImageKey: String
@available(tvOS 7.0, *)
let kCIInputExtentKey: String
@available(tvOS 6.0, *)
let kCIInputVersionKey: String

/** CIFilter are filter objects for Core Image that encapsulate the filter with its attributes
 
 The CIFilter class produces a CIImage object as output. Typically, a filter takes one or more images as input. Some filters, however, generate an image based on other types of input parameters. The parameters of a CIFilter object are set and retrieved through the use of key-value pairs. You use the CIFilter object in conjunction with the CIImage, CIContext, CIVector, CIImageAccumulator, and CIColor objects to take advantage of the built-in Core Image filters when processing images. CIFilter objects are also used along with CIKernel, CISampler, and CIFilterShape objects to create custom filters. */
@available(tvOS 5.0, *)
class CIFilter : Object, SecureCoding, Copying {
  @available(tvOS 5.0, *)
  var outputImage: CIImage? { get }
  @available(tvOS 5.0, *)
  var name: String { get }

  /** Returns an array containing the names of all inputs in the filter. */
  var inputKeys: [String] { get }

  /** Returns an array containing the names of all outputs in the filter. */
  var outputKeys: [String] { get }

  /** Sets all inputs to their default values (where default values are defined, other inputs are left as-is). */
  func setDefaults()

  /** Returns a dictionary containing key/value pairs describing the filter. (see description of keys below) */
  var attributes: [String : AnyObject] { get }
  init()
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 5.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

extension CIFilter {
  @available(iOS 8.0, OSX 10.10, *)
  convenience init?(name: String!, elements: (String, AnyObject)...)
}

/** Methods to register a filter and get access to the list of registered filters
 Use these methods to create filters and find filters. */
extension CIFilter {

  /** Creates a new filter of type 'name'. 
   On OSX, all input values will be undefined.
   On iOS, all input values will be set to default values. */
  /*not inherited*/ init?(name: String)

  /** Creates a new filter of type 'name'.
   The filter's input parameters are set from the dictionary of key-value pairs.
   On OSX, any of the filter input parameters not specified in the dictionary will be undefined.
   On iOS, any of the filter input parameters not specified in the dictionary will be set to default values. */
  @available(tvOS 8.0, *)
  /*not inherited*/ init?(name: String, withInputParameters params: [String : AnyObject]?)

  /** Returns an array containing all published filter names in a category. */
  class func filterNamesInCategory(category: String?) -> [String]

  /** Returns an array containing all published filter names that belong to all listed categories. */
  class func filterNamesInCategories(categories: [String]?) -> [String]

  /** Publishes a new filter called 'name'.
   
   The constructor object 'anObject' should implement the filterWithName: method.
   That method will be invoked with the name of the filter to create.
   The class attributes must have a kCIAttributeFilterCategories key associated with a set of categories.
   @param   attributes    Dictionary of the registration attributes of the filter. See below for attribute keys.
  */
  @available(tvOS 9.0, *)
  class func registerName(name: String, constructor anObject: CIFilterConstructor, classAttributes attributes: [String : AnyObject] = [:])

  /** Returns the localized name of a filter for display in the UI. */
  @available(tvOS 9.0, *)
  class func localizedNameForFilterName(filterName: String) -> String?

  /** Returns the localized name of a category for display in the UI. */
  @available(tvOS 9.0, *)
  class func localizedNameForCategory(category: String) -> String

  /** Returns the localized description of a filter for display in the UI. */
  @available(tvOS 9.0, *)
  class func localizedDescriptionForFilterName(filterName: String) -> String?

  /** Returns the URL to the localized reference documentation describing the filter.
      
   The URL can be a local file or a remote document on a webserver. It is possible, that this method returns nil (like filters that predate this feature). A client of this API has to handle this case gracefully. */
  @available(tvOS 9.0, *)
  class func localizedReferenceDocumentationForFilterName(filterName: String) -> URL?
}

/** Methods to serialize arrays of filters to xmp. */
extension CIFilter {
  @available(tvOS 6.0, *)
  class func serializedXMPFrom(filters: [CIFilter], inputImageExtent extent: CGRect) -> Data
  @available(tvOS 6.0, *)
  class func filterArrayFromSerializedXMP(xmpData: Data, inputImageExtent extent: CGRect, error outError: ErrorPointer) -> [CIFilter]
}
protocol CIFilterConstructor {
  @available(tvOS 5.0, *)
  func filterWithName(name: String) -> CIFilter?
}
@available(tvOS 9.0, *)
class CIFilterShape : Object, Copying {
  init(rect r: CGRect)
  func transformBy(m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetByX(dx: Int32, y dy: Int32) -> CIFilterShape
  func unionWith(s2: CIFilterShape) -> CIFilterShape
  func unionWith(r: CGRect) -> CIFilterShape
  func intersectWith(s2: CIFilterShape) -> CIFilterShape
  func intersectWith(r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 5.0, *)
class CIImage : Object, SecureCoding, Copying {
  class func empty() -> CIImage
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [String : AnyObject]? = [:])
  init?(data: Data)
  init?(data: Data, options: [String : AnyObject]? = [:])
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(tvOS 6.0, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(tvOS 9.0, *)
  init(mtlTexture texture: MTLTexture, options: [String : AnyObject]? = [:])
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [String : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  @available(tvOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [String : AnyObject]? = [:])
  @available(tvOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(tvOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [String : AnyObject]? = [:])
  init(color: CIColor)
  func applying(matrix: CGAffineTransform) -> CIImage
  @available(tvOS 8.0, *)
  func applyingOrientation(orientation: Int32) -> CIImage
  @available(tvOS 8.0, *)
  func imageTransformForOrientation(orientation: Int32) -> CGAffineTransform
  @available(tvOS 8.0, *)
  func byCompositingOverImage(dest: CIImage) -> CIImage
  func byCroppingTo(rect: CGRect) -> CIImage
  @available(tvOS 8.0, *)
  func byClampingToExtent() -> CIImage
  @available(tvOS 8.0, *)
  func applyingFilter(filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  @available(tvOS 5.0, *)
  var properties: [String : AnyObject] { get }
  @available(tvOS 9.0, *)
  var url: URL? { get }
  @available(tvOS 9.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(tvOS 6.0, *)
  func regionOfInterestFor(image: CIImage, in rect: CGRect) -> CGRect
  init()
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 5.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias CIFormat = Int32
@available(tvOS 6.0, *)
var kCIFormatARGB8: CIFormat
var kCIFormatBGRA8: CIFormat
var kCIFormatRGBA8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatABGR8: CIFormat
@available(tvOS 7.0, *)
var kCIFormatRGBAf: CIFormat
@available(tvOS 6.0, *)
var kCIFormatRGBAh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatA8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatA16: CIFormat
@available(tvOS 9.0, *)
var kCIFormatAh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatAf: CIFormat
@available(tvOS 9.0, *)
var kCIFormatR8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatR16: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRf: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRG8: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRG16: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRGh: CIFormat
@available(tvOS 9.0, *)
var kCIFormatRGf: CIFormat
let kCIImageColorSpace: String
@available(tvOS 5.0, *)
let kCIImageProperties: String
extension CIImage {
  @available(tvOS 5.0, *)
  func autoAdjustmentFilters(options options: [String : AnyObject]? = [:]) -> [CIFilter]
}
@available(tvOS 5.0, *)
let kCIImageAutoAdjustEnhance: String
@available(tvOS 5.0, *)
let kCIImageAutoAdjustRedEye: String
@available(tvOS 5.0, *)
let kCIImageAutoAdjustFeatures: String
@available(tvOS 8.0, *)
let kCIImageAutoAdjustCrop: String
@available(tvOS 8.0, *)
let kCIImageAutoAdjustLevel: String
@available(tvOS 9.0, *)
class CIImageAccumulator : Object {
  init(extent: CGRect, format: CIFormat)
  @available(tvOS 9.0, *)
  init(extent: CGRect, format: CIFormat, colorSpace: CGColorSpace)
  var extent: CGRect { get }
  var format: CIFormat { get }
  func image() -> CIImage
  func setImage(image: CIImage)
  func setImage(image: CIImage, dirtyRect: CGRect)
  func clear()
  init()
}
extension CIImage {
  @available(tvOS 9.0, *)
  init(imageProvider p: AnyObject, size width: Int, _ height: Int, format f: CIFormat, colorSpace cs: CGColorSpace?, options: [String : AnyObject]? = [:])
}

/** Informal protocol used to lazily supply image data. */
extension Object {
  class func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
  func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
}
@available(tvOS 9.0, *)
let kCIImageProviderTileSize: String
@available(tvOS 9.0, *)
let kCIImageProviderUserInfo: String
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
@available(tvOS 8.0, *)
class CIKernel : Object {
  @available(tvOS 8.0, *)
  class func kernelsWith(string: String) -> [CIKernel]?
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  var name: String { get }
  @available(tvOS 9.0, *)
  func setROISelector(method: Selector)
  @available(tvOS 8.0, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(tvOS 8.0, *)
class CIColorKernel : CIKernel {
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  func applyWithExtent(extent: CGRect, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(tvOS 8.0, *)
class CIWarpKernel : CIKernel {
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, inputImage image: CIImage, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(tvOS 9.0, *)
class CISampler : Object, Copying {
  convenience init(image im: CIImage)
  init(image im: CIImage, options dict: [Object : AnyObject]? = [:])
  var definition: CIFilterShape { get }
  var extent: CGRect { get }
  convenience init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
let kCISamplerAffineMatrix: String
@available(tvOS 9.0, *)
let kCISamplerWrapMode: String
@available(tvOS 9.0, *)
let kCISamplerFilterMode: String
@available(tvOS 9.0, *)
let kCISamplerWrapBlack: String
@available(tvOS 9.0, *)
let kCISamplerWrapClamp: String
@available(tvOS 9.0, *)
let kCISamplerFilterNearest: String
@available(tvOS 9.0, *)
let kCISamplerFilterLinear: String
@available(tvOS 9.0, *)
let kCISamplerColorSpace: String
@available(tvOS 5.0, *)
class CIVector : Object, Copying, SecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  @available(tvOS 5.0, *)
  convenience init(cgPoint p: CGPoint)
  @available(tvOS 5.0, *)
  convenience init(cgRect r: CGRect)
  @available(tvOS 5.0, *)
  convenience init(cgAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func valueAt(index: Int) -> CGFloat
  var count: Int { get }
  var x: CGFloat { get }
  var y: CGFloat { get }
  var z: CGFloat { get }
  var w: CGFloat { get }
  @available(tvOS 5.0, *)
  var cgPointValue: CGPoint { get }
  @available(tvOS 5.0, *)
  var cgRectValue: CGRect { get }
  @available(tvOS 5.0, *)
  var cgAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  convenience init()
  @available(tvOS 5.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
