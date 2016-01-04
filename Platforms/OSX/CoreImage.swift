
var UNIFIED_CORE_IMAGE: Int32 { get }
@available(OSX 10.4, *)
class CIColor : NSObject, NSSecureCoding, NSCopying {
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat)
  convenience init(string representation: String)
  init(CGColor c: CGColor)
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
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.4, *)
class CIContext : NSObject {
  @available(OSX 10.6, *)
  /*not inherited*/ init(CGLContext cglctx: CGLContextObj, pixelFormat: CGLPixelFormatObj, colorSpace: CGColorSpace?, options: [String : AnyObject]?)
  @available(OSX 10.4, *)
  /*not inherited*/ init(CGContext cgctx: CGContext, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  /*not inherited*/ init(options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice)
  @available(OSX 10.11, *)
  /*not inherited*/ init(MTLDevice device: MTLDevice, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  var workingColorSpace: CGColorSpace { get }
  func drawImage(image: CIImage, inRect: CGRect, fromRect: CGRect)
  func createCGImage(image: CIImage, fromRect: CGRect) -> CGImage
  func createCGImage(image: CIImage, fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage
  @available(OSX, introduced=10.4, deprecated=10.11)
  func createCGLayerWithSize(size: CGSize, info: CFDictionary?) -> CGLayer
  func render(image: CIImage, toBitmap data: UnsafeMutablePointer<Void>, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(OSX 10.6, *)
  func render(image: CIImage, toIOSurface surface: IOSurface, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(OSX 10.11, *)
  func render(image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer)
  @available(OSX 10.11, *)
  func render(image: CIImage, toCVPixelBuffer buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(OSX 10.11, *)
  func render(image: CIImage, toMTLTexture texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
  @available(OSX 10.4, *)
  func reclaimResources()
  @available(OSX 10.4, *)
  func clearCaches()
  init()
}
let kCIContextOutputColorSpace: String
let kCIContextWorkingColorSpace: String
@available(OSX 10.4, *)
let kCIContextWorkingFormat: String
@available(OSX 10.11, *)
let kCIContextHighQualityDownsample: String
let kCIContextUseSoftwareRenderer: String
extension CIContext {
  @available(OSX 10.10, *)
  class func offlineGPUCount() -> UInt32
  @available(OSX 10.10, *)
  /*not inherited*/ init(forOfflineGPUAtIndex index: UInt32)
  @available(OSX 10.10, *)
  /*not inherited*/ init(forOfflineGPUAtIndex index: UInt32, colorSpace: CGColorSpace?, options: [String : AnyObject]?, sharedContext: CGLContextObj)
}

/** Detects features in images.
 
 This class potentially holds onto a lot of state. Hence it may be beneficial from a performance perspective to re-use the same CIDetector instance. Specifying a CIContext when creating a detector may have an impact on performance since this context may be used when analyzing an image.
 */
@available(OSX 10.7, *)
class CIDetector : NSObject {

  /** Returns a new detector instance of the given type.
   
   The type is used to specify the usage intent.
   
   The context argument specifies the CIContext to be used to operate on the image. May be nil.
   
   If the input image to -featuresInImage: is the output of a CoreImage operation, it may improve performance to specify the same context that was used to operate on that image.
   
   The detector may do image processing in this context and if the image is on the GPU and the specified context is a GPU context this may avoid additional upload to / download from the GPU. If the input image is on the CPU (or the output from a CPU based context) specifying a GPU based context (or vice versa) may reduce performance.
   
   The options parameter lets you optinally specify a accuracy / performance tradeoff. Can be nil or an empty dictionary. */
  @available(OSX 10.7, *)
  /*not inherited*/ init(ofType type: String, context: CIContext?, options: [String : AnyObject]?)

  /** Returns an array of CIFeature instances in the given image.
   The array is sorted by confidence, highest confidence first. */
  @available(OSX 10.7, *)
  func featuresInImage(image: CIImage) -> [CIFeature]

  /** Returns an array of CIFeature instances in the given image.
   The array is sorted by confidence, highest confidence first. 
   The options dictionary can contain a CIDetectorImageOrientation key value. */
  @available(OSX 10.8, *)
  func featuresInImage(image: CIImage, options: [String : AnyObject]?) -> [CIFeature]
  init()
}
@available(OSX 10.7, *)
let CIDetectorTypeFace: String
@available(OSX 10.10, *)
let CIDetectorTypeRectangle: String
@available(OSX 10.10, *)
let CIDetectorTypeQRCode: String
@available(OSX 10.11, *)
let CIDetectorTypeText: String
@available(OSX 10.7, *)
let CIDetectorAccuracy: String
@available(OSX 10.7, *)
let CIDetectorAccuracyLow: String
@available(OSX 10.7, *)
let CIDetectorAccuracyHigh: String
@available(OSX 10.8, *)
let CIDetectorTracking: String
@available(OSX 10.8, *)
let CIDetectorMinFeatureSize: String
@available(OSX 10.11, *)
let CIDetectorNumberOfAngles: String
@available(OSX 10.8, *)
let CIDetectorImageOrientation: String
@available(OSX 10.9, *)
let CIDetectorEyeBlink: String
@available(OSX 10.9, *)
let CIDetectorSmile: String
@available(OSX 10.10, *)
let CIDetectorFocalLength: String
@available(OSX 10.10, *)
let CIDetectorAspectRatio: String
@available(OSX 10.11, *)
let CIDetectorReturnSubFeatures: String

/** Generic feature found by a CIDetector. */
@available(OSX 10.7, *)
class CIFeature : NSObject {

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
@available(OSX 10.7, *)
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
@available(OSX 10.10, *)
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
@available(OSX 10.10, *)
class CIQRCodeFeature : CIFeature {
  var bounds: CGRect { get }
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  var messageString: String { get }
  init()
}
@available(OSX 10.11, *)
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
@available(OSX 10.5, *)
let kCIAttributeDescription: String

/** The version of OS X and iOS a filter was first available in. */
@available(OSX 10.11, *)
let kCIAttributeFilterAvailable_Mac: String
@available(OSX 10.11, *)
let kCIAttributeFilterAvailable_iOS: String

/** URL for the reference documentation of the filter. See localizedReferenceDocumentationForFilterName. */
@available(OSX 10.5, *)
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
@available(OSX 10.5, *)
let kCIUIParameterSet: String

/** Constant for requesting controls that are appropiate in an basic user scenario, meaning the bare minimum of settings to control the filter. */
@available(OSX 10.5, *)
let kCIUISetBasic: String

/** Constant for requesting controls that are appropiate in an intermediate user scenario. */
@available(OSX 10.5, *)
let kCIUISetIntermediate: String

/** Constant for requesting controls that are appropiate in an advanced user scenario. */
@available(OSX 10.5, *)
let kCIUISetAdvanced: String

/** Constant for requesting controls that should only be visible for development purposes. */
@available(OSX 10.5, *)
let kCIUISetDevelopment: String
let kCIAttributeTypeTime: String
let kCIAttributeTypeScalar: String
let kCIAttributeTypeDistance: String
let kCIAttributeTypeAngle: String
let kCIAttributeTypeBoolean: String

/** Indicates that the key uses integer values. */
@available(OSX 10.5, *)
let kCIAttributeTypeInteger: String

/** Indicates that the key uses non negative integer values. */
@available(OSX 10.5, *)
let kCIAttributeTypeCount: String
let kCIAttributeTypePosition: String
let kCIAttributeTypeOffset: String
let kCIAttributeTypePosition3: String
let kCIAttributeTypeRectangle: String
@available(OSX 10.4, *)
let kCIAttributeTypeOpaqueColor: String
@available(OSX 10.11, *)
let kCIAttributeTypeColor: String
@available(OSX 10.4, *)
let kCIAttributeTypeGradient: String
@available(OSX 10.11, *)
let kCIAttributeTypeImage: String
@available(OSX 10.11, *)
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
@available(OSX 10.5, *)
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
@available(OSX 10.5, *)
let kCICategoryFilterGenerator: String
@available(OSX 10.4, *)
let kCIApplyOptionExtent: String
@available(OSX 10.4, *)
let kCIApplyOptionDefinition: String
@available(OSX 10.4, *)
let kCIApplyOptionUserInfo: String
@available(OSX 10.4, *)
let kCIApplyOptionColorSpace: String
@available(OSX 10.5, *)
let kCIOutputImageKey: String
@available(OSX 10.5, *)
let kCIInputBackgroundImageKey: String
@available(OSX 10.5, *)
let kCIInputImageKey: String
@available(OSX 10.5, *)
let kCIInputTimeKey: String
@available(OSX 10.5, *)
let kCIInputTransformKey: String
@available(OSX 10.5, *)
let kCIInputScaleKey: String
@available(OSX 10.5, *)
let kCIInputAspectRatioKey: String
@available(OSX 10.5, *)
let kCIInputCenterKey: String
@available(OSX 10.5, *)
let kCIInputRadiusKey: String
@available(OSX 10.5, *)
let kCIInputAngleKey: String
@available(OSX 10.5, *)
let kCIInputRefractionKey: String
@available(OSX 10.5, *)
let kCIInputWidthKey: String
@available(OSX 10.5, *)
let kCIInputSharpnessKey: String
@available(OSX 10.5, *)
let kCIInputIntensityKey: String
@available(OSX 10.5, *)
let kCIInputEVKey: String
@available(OSX 10.5, *)
let kCIInputSaturationKey: String
@available(OSX 10.5, *)
let kCIInputColorKey: String
@available(OSX 10.5, *)
let kCIInputBrightnessKey: String
@available(OSX 10.5, *)
let kCIInputContrastKey: String
@available(OSX 10.5, *)
let kCIInputBiasKey: String
@available(OSX 10.11, *)
let kCIInputWeightsKey: String
@available(OSX 10.5, *)
let kCIInputGradientImageKey: String
@available(OSX 10.5, *)
let kCIInputMaskImageKey: String
@available(OSX 10.5, *)
let kCIInputShadingImageKey: String
@available(OSX 10.5, *)
let kCIInputTargetImageKey: String
@available(OSX 10.5, *)
let kCIInputExtentKey: String
@available(OSX 10.11, *)
let kCIInputVersionKey: String

/** CIFilter are filter objects for Core Image that encapsulate the filter with its attributes
 
 The CIFilter class produces a CIImage object as output. Typically, a filter takes one or more images as input. Some filters, however, generate an image based on other types of input parameters. The parameters of a CIFilter object are set and retrieved through the use of key-value pairs. You use the CIFilter object in conjunction with the CIImage, CIContext, CIVector, CIImageAccumulator, and CIColor objects to take advantage of the built-in Core Image filters when processing images. CIFilter objects are also used along with CIKernel, CISampler, and CIFilterShape objects to create custom filters. */
@available(OSX 10.4, *)
class CIFilter : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.10, *)
  var outputImage: CIImage? { get }
  @available(OSX 10.5, *)
  var name: String
  @available(OSX 10.5, *)
  var enabled: Bool

  /** Returns an array containing the names of all inputs in the filter. */
  var inputKeys: [String] { get }

  /** Returns an array containing the names of all outputs in the filter. */
  var outputKeys: [String] { get }

  /** Sets all inputs to their default values (where default values are defined, other inputs are left as-is). */
  func setDefaults()

  /** Returns a dictionary containing key/value pairs describing the filter. (see description of keys below) */
  var attributes: [String : AnyObject] { get }

  /** Used by CIFilter subclasses to apply the array of argument values 'args' to the kernel function 'k'. The supplied arguments must be type-compatible with the function signature of the kernel.
   
   The key-value pairs defined by 'dict' (if non-nil) are used to control exactly how the kernel is evaluated. Valid keys include:
   kCIApplyOptionExtent: the size of the produced image. Value is a four element NSArray [X Y WIDTH HEIGHT].
   kCIApplyOptionDefinition: the Domain of Definition of the produced image. Value is either a CIFilterShape object, or a four element NSArray defining a rectangle.
   @param  k         CIKernel of the filter
   @param  args      Array of arguments that are applied to the kernel
   @param  options   Array of additional options
  */
  @available(OSX 10.4, *)
  func apply(k: CIKernel, arguments args: [AnyObject]?, options dict: [String : AnyObject]?) -> CIImage?
  init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

extension CIFilter {
  func apply(k: CIKernel, args: [AnyObject], options: (String, AnyObject)...) -> CIImage?
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
  @available(OSX 10.10, *)
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
  @available(OSX 10.4, *)
  class func registerFilterName(name: String, constructor anObject: CIFilterConstructor, classAttributes attributes: [String : AnyObject])

  /** Returns the localized name of a filter for display in the UI. */
  @available(OSX 10.4, *)
  class func localizedNameForFilterName(filterName: String) -> String?

  /** Returns the localized name of a category for display in the UI. */
  @available(OSX 10.4, *)
  class func localizedNameForCategory(category: String) -> String

  /** Returns the localized description of a filter for display in the UI. */
  @available(OSX 10.4, *)
  class func localizedDescriptionForFilterName(filterName: String) -> String?

  /** Returns the URL to the localized reference documentation describing the filter.
      
   The URL can be a local file or a remote document on a webserver. It is possible, that this method returns nil (like filters that predate this feature). A client of this API has to handle this case gracefully. */
  @available(OSX 10.4, *)
  class func localizedReferenceDocumentationForFilterName(filterName: String) -> NSURL?
}

/** Methods to serialize arrays of filters to xmp. */
extension CIFilter {
  @available(OSX 10.9, *)
  class func serializedXMPFromFilters(filters: [CIFilter], inputImageExtent extent: CGRect) -> NSData
  @available(OSX 10.9, *)
  class func filterArrayFromSerializedXMP(xmpData: NSData, inputImageExtent extent: CGRect, error outError: NSErrorPointer) -> [CIFilter]
}
protocol CIFilterConstructor {
  @available(OSX 10.4, *)
  func filterWithName(name: String) -> CIFilter?
}

/** The key of the target object that is exported */
let kCIFilterGeneratorExportedKey: String

/** Target object for the exported key */
let kCIFilterGeneratorExportedKeyTargetObject: String

/** Name of the key under which it is exported. */
let kCIFilterGeneratorExportedKeyName: String

/** The goal is to CIFilters to be connected and form a single CIFilter for ease of reusability.
 
 The CIFilterGenerator allows developers to create complex effects built out of one or more CIFilter and reuse them without changing code. The resulting CIFilterGenerator can be written into a file for which we introduce a new file type (extension). A CIFilterGenerator can be created from the API or more conveniently through an editor view that we provide.
 CIFilterGenerator files can be put into the Image Units folders on the system and they will be loaded when the user invokes one of the loadPlugIns methods. They will be registered by their filename or if present by an attribute in its description.
 */
@available(OSX 10.5, *)
class CIFilterGenerator : NSObject, NSSecureCoding, NSCopying, CIFilterConstructor {

  /** Initializes a CIFilterGenerator with the contents of the file.
  
   @result   CIFilterGenerator object. If the file could not be read it returns nil.
  */
  init?(contentsOfURL aURL: NSURL)

  /** Connect two objects into the filter chain.
  
   This method connects two object in the filter chain. For instance you can connect the outputImage key of a CISepiaTone filter object to the inputImage key of another CIFilter.
   @param   sourceObject  A CIFilter, CIImage, NSString, or NSURL describing the path to the image
   @param   sourceKey     For KVC access to the source object. Can be nil which means that the source object will be used directly.
   @param   targetObject  The object that you link the source object to.
   @param   targetKey     The key that you assign the source object to.
  */
  func connectObject(sourceObject: AnyObject, withKey sourceKey: String?, toObject targetObject: AnyObject, withKey targetKey: String)

  /** Removes the connection between two objects in the filter chain.
      
   Use this method to disconnect two objects that you connected using the connectObject:withKey:toObject:withKey: method.
   @param      sourceObject A CIFilter or CIImage or an NSString or an NSURL describing the path to the image
   @param      sourceKey For KVC access to the source object. Can be nil which means that the source object will be used directly.
   @param      targetObject The object that you linked the source object to.
   @param      targetKey The key that you assigned the source object to.
  */
  func disconnectObject(sourceObject: AnyObject, withKey key: String, toObject targetObject: AnyObject, withKey targetKey: String)

  /** This methods allows you to export an input or output key of an object in the filter chain to be available through the inputKeys or outputKeys API when converted into a CIFilter
   
   When you create a CIFilter from the CIFilterGenerator, you might want the client of the filter being able to set some of the paramters of the filter chain. To do so these parameters have to be exported as keys much like the inputKeys and outputKeys of all CIFilters.
   @param      key The key path that is to be exported from the target object (eg. inputImage)
   @param      targetObject The object of which the key is to be exported (eg the filter).
   @param      exportedKeyName The name under which you want the new key to be available. This parameter can be nil in which case the original key name will be used. This name has to be unique. If a key being exported is an inputKey of the filter it will be exported as an input key and the other way around for output keys.
  */
  func exportKey(key: String, fromObject targetObject: AnyObject, withName exportedKeyName: String?)

  /** Removes a key that was exported before using exportKey:fromObject:withName:
   
   Use this method when you want to remove a prior exported key. It will not show up under inputKeys or outputKeys anymore.
   @param      exportedKeyName Name of the key that was exported.
  */
  func removeExportedKey(exportedKeyName: String)

  /** An array of the exported keys.
   
   Use this method to get an NSArray of all the keys that you have exported using exportKey:fromObject:withName: or that were exported before written to a file from which you read the filter chain.
   @result     An array of dictionaries that describe the exported key and target object. See CIExportedKey, CIExportedKeyTargetObject and CIExportedKeyName for keys used in the dictionary.
  */
  var exportedKeys: [NSObject : AnyObject] { get }

  /** Set a new dictionary of attributes for an exported key.
      
   By default, the exported key inherits the attributes from its original key and target object. Use this method to for instance change the default value or lower the maximum allowed value. 
   */
  func setAttributes(attributes: [NSObject : AnyObject], forExportedKey key: String)

  /** Retrieve or Set the class attributes that will be used to register the filter using the registerFilterName method.
   Make sure you set the class attributes before using the registerFilterName method.
   See CIFilter for a description of the classAttributes that are needed to register a filter. 
  */
  var classAttributes: [NSObject : AnyObject]

  /** Create a CIFilter object based on this filter chain.
   
   This method creates a CIFilter from the filter chain where the topology of the chain is immutable, meaning that changes to the filter chain will not be reflected in the filter. The filter will have the input and output keys that were exported as described above.
  */
  func filter() -> CIFilter

  /** Register the resulting filter of the chain in the CIFilter repository.
   
   This method allows you to register the filter chain as a named filter in the filter repository. You can then create a CIFilter object from it using the filterWithName: method. Make sure you set the class attributes first - see CIFilter for a description of the classAttributes that are needed to register a filter.
   When registering Core Image automatically adds the kCIFilterGeneratorCategory to the filters categories. The kCIFilterGeneratorCategory is purely for identification purpose and will not be exposed in the filter browser as a seperate category.
   
   @param      name The name under which the filter will be registered. This name has to be unique. 
  */
  func registerFilterName(name: String)

  /** Write the CIFilterGenerator into a file
   @result     Returns true when the chain with written our succesfully 
  */
  func writeToURL(aURL: NSURL, atomically flag: Bool) -> Bool
  init()
  @available(OSX 10.5, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.5, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.5, *)
  func filterWithName(name: String) -> CIFilter?
}
@available(OSX 10.4, *)
class CIFilterShape : NSObject, NSCopying {
  init(rect r: CGRect)
  func transformBy(m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetByX(dx: Int32, y dy: Int32) -> CIFilterShape
  func unionWith(s2: CIFilterShape) -> CIFilterShape
  func unionWithRect(r: CGRect) -> CIFilterShape
  func intersectWith(s2: CIFilterShape) -> CIFilterShape
  func intersectWithRect(r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.4, *)
class CIImage : NSObject, NSSecureCoding, NSCopying {
  class func emptyImage() -> CIImage
  init(CGImage image: CGImage)
  init(CGImage image: CGImage, options: [String : AnyObject]?)
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use initWithCGImage: instead.")
  init(CGLayer layer: CGLayer)
  @available(OSX, introduced=10.4, deprecated=10.11, message="Use initWithCGImage:options instead.")
  init(CGLayer layer: CGLayer, options: [String : AnyObject]?)
  init?(data: NSData)
  init?(data: NSData, options: [String : AnyObject]?)
  init(bitmapData data: NSData, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(OSX 10.4, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(OSX 10.9, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  init(MTLTexture texture: MTLTexture, options: [String : AnyObject]?)
  init?(contentsOfURL url: NSURL)
  init?(contentsOfURL url: NSURL, options: [String : AnyObject]?)
  @available(OSX 10.6, *)
  init(IOSurface surface: IOSurface)
  @available(OSX 10.6, *)
  init(IOSurface surface: IOSurface, options: [String : AnyObject]?)
  @available(OSX, introduced=10.9, deprecated=10.11)
  init(IOSurface surface: IOSurface, plane: Int, format: CIFormat, options: [String : AnyObject]?)
  @available(OSX 10.4, *)
  init(CVImageBuffer imageBuffer: CVImageBuffer)
  @available(OSX 10.4, *)
  init(CVImageBuffer imageBuffer: CVImageBuffer, options: [String : AnyObject]?)
  @available(OSX 10.11, *)
  init(CVPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(OSX 10.11, *)
  init(CVPixelBuffer pixelBuffer: CVPixelBuffer, options: [String : AnyObject]?)
  init(color: CIColor)
  func imageByApplyingTransform(matrix: CGAffineTransform) -> CIImage
  @available(OSX 10.10, *)
  func imageByApplyingOrientation(orientation: Int32) -> CIImage
  @available(OSX 10.10, *)
  func imageTransformForOrientation(orientation: Int32) -> CGAffineTransform
  @available(OSX 10.4, *)
  func imageByCompositingOverImage(dest: CIImage) -> CIImage
  func imageByCroppingToRect(rect: CGRect) -> CIImage
  @available(OSX 10.10, *)
  func imageByClampingToExtent() -> CIImage
  @available(OSX 10.10, *)
  func imageByApplyingFilter(filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  @available(OSX 10.8, *)
  var properties: [String : AnyObject] { get }
  @available(OSX 10.4, *)
  var definition: CIFilterShape { get }
  @available(OSX 10.4, *)
  var url: NSURL? { get }
  @available(OSX 10.4, *)
  var colorSpace: CGColorSpace? { get }
  @available(OSX 10.11, *)
  func regionOfInterestForImage(image: CIImage, inRect rect: CGRect) -> CGRect
  init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias CIFormat = Int32
@available(OSX 10.4, *)
var kCIFormatARGB8: CIFormat
var kCIFormatBGRA8: CIFormat
var kCIFormatRGBA8: CIFormat
@available(OSX 10.11, *)
var kCIFormatABGR8: CIFormat
@available(OSX 10.4, *)
var kCIFormatRGBA16: CIFormat
@available(OSX 10.4, *)
var kCIFormatRGBAf: CIFormat
@available(OSX 10.4, *)
var kCIFormatRGBAh: CIFormat
@available(OSX 10.11, *)
var kCIFormatA8: CIFormat
@available(OSX 10.11, *)
var kCIFormatA16: CIFormat
@available(OSX 10.11, *)
var kCIFormatAh: CIFormat
@available(OSX 10.11, *)
var kCIFormatAf: CIFormat
@available(OSX 10.11, *)
var kCIFormatR8: CIFormat
@available(OSX 10.11, *)
var kCIFormatR16: CIFormat
@available(OSX 10.11, *)
var kCIFormatRh: CIFormat
@available(OSX 10.11, *)
var kCIFormatRf: CIFormat
@available(OSX 10.11, *)
var kCIFormatRG8: CIFormat
@available(OSX 10.11, *)
var kCIFormatRG16: CIFormat
@available(OSX 10.11, *)
var kCIFormatRGh: CIFormat
@available(OSX 10.11, *)
var kCIFormatRGf: CIFormat
let kCIImageColorSpace: String
@available(OSX 10.8, *)
let kCIImageProperties: String
@available(OSX 10.9, *)
let kCIImageTextureTarget: String
@available(OSX 10.9, *)
let kCIImageTextureFormat: String
extension CIImage {
  @available(OSX 10.8, *)
  func autoAdjustmentFiltersWithOptions(options: [String : AnyObject]?) -> [CIFilter]
}
@available(OSX 10.8, *)
let kCIImageAutoAdjustEnhance: String
@available(OSX 10.8, *)
let kCIImageAutoAdjustRedEye: String
@available(OSX 10.8, *)
let kCIImageAutoAdjustFeatures: String
@available(OSX 10.10, *)
let kCIImageAutoAdjustCrop: String
@available(OSX 10.10, *)
let kCIImageAutoAdjustLevel: String
@available(OSX 10.4, *)
class CIImageAccumulator : NSObject {
  init(extent: CGRect, format: CIFormat)
  @available(OSX 10.7, *)
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
  @available(OSX 10.4, *)
  init(imageProvider p: AnyObject, size width: Int, _ height: Int, format f: CIFormat, colorSpace cs: CGColorSpace?, options: [String : AnyObject]?)
}

/** Informal protocol used to lazily supply image data. */
extension NSObject {
  class func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
  func provideImageData(data: UnsafeMutablePointer<Void>, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: AnyObject?)
}
@available(OSX 10.4, *)
let kCIImageProviderTileSize: String
@available(OSX 10.4, *)
let kCIImageProviderUserInfo: String
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
@available(OSX 10.4, *)
class CIKernel : NSObject {
  @available(OSX 10.4, *)
  class func kernelsWithString(string: String) -> [CIKernel]?
  @available(OSX 10.10, *)
  convenience init?(string: String)
  @available(OSX 10.4, *)
  var name: String { get }
  @available(OSX 10.4, *)
  func setROISelector(method: Selector)
  @available(OSX 10.11, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(OSX 10.11, *)
class CIColorKernel : CIKernel {
  @available(OSX 10.10, *)
  convenience init?(string: String)
  @available(OSX 10.11, *)
  func applyWithExtent(extent: CGRect, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(OSX 10.11, *)
class CIWarpKernel : CIKernel {
  @available(OSX 10.10, *)
  convenience init?(string: String)
  @available(OSX 10.11, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, inputImage image: CIImage, arguments args: [AnyObject]?) -> CIImage?
  init()
}

/**
 The CIPlugIn class is responsible for loading Image Units.
 
 The implementation of the CIPlugIn objects is private.
 An application can, however, call the 2 public class method to load plug-ins.
 */
@available(OSX 10.4, *)
class CIPlugIn : NSObject {

  /** This call will scan for plugins with the extension .plugin in
   		/Library/Graphics/Image Units
          ~Library/Graphics/Image Units
   If called more than once, newly added plug-ins will be loaded but you cannot remove a plug-in and its filters. */
  class func loadAllPlugIns()

  /** Same as loadAllPlugIns does not load filters that contain executable code. */
  class func loadNonExecutablePlugIns()

  /** Loads a plug-in specified by its URL.
   
   If allowExecutableCode is NO, filters containing executable code will not be loaded. If YES, any kind of filter will be loaded. */
  @available(OSX 10.7, *)
  class func loadPlugIn(url: NSURL!, allowExecutableCode: Bool)
  init()
}

/*!
    @protocol   CIPlugInRegistration
    @abstract   This protocol defines the calls made by the host to the CIPlugIn when initializing it
    @discussion The principal class of a CIPlugIn must support the CIPlugInRegistration protocol
*/
protocol CIPlugInRegistration {

  /*!
      @method     load
      @abstract   the plugin gets a chance to do custom initialization (like registration check ) here
      @discussion Load gets called once by the host when the first filter from the plug-in gets instantiated. Return of true means that the plugIn successfully initialized
      @param      host    for future use only
  */
  func load(host: UnsafeMutablePointer<Void>) -> Bool
}

/** CIRAWFilter is a category of CIFilter which returns a CIFilter initialized with a RAW image. It allows the user to influence key aspects of the raw processing, such as white balance, exposure, sharpening or boost. */
extension CIFilter {

  /** Returns a CIFilter that will in turn return a properly processed CIImage as "outputImage". */
  /*not inherited*/ init!(imageURL url: NSURL!, options: [NSObject : AnyObject]!)

  /** Returns a CIFilter that will in turn return a properly processed CIImage as "outputImage".
  
   Note that when using this initializer, you should pass in a source type identifier hint (kCGImageSourceTypeIdentifierHint) key/value pair in order to help the decoder determine the file type, as otherwise confusion and incorrect results are possible. An example of use would be: [opts setObject:(id)CGImageSourceGetTypeWithExtension ((CFStringRef)[[url path] pathExtension]) forKey:kCGImageSourceTypeIdentifierHint]; */
  /*not inherited*/ init!(imageData data: NSData!, options: [NSObject : AnyObject]!)
}

/** NSString: Version string representing the decoder version to be used. A newly initialized object defaults to the newest available decoder version for the given image type. User can request an alternative, older version in order to maintain compatibility with older releases. Must be one of kCISupportedDecoderVersions (below), otherwise a nil output image will be generated. */
@available(OSX 10.5, *)
let kCIInputDecoderVersionKey: String

/** NSArray (NSDictionary) : Array of all supported decoder versions for the given image type, sorted in increasingly newer order. Each entry is a NSDictionary with a number of key/value pairs. All entries would represent a valid version identifier to be passed in for kCIInputDecoderVersion. This value can be only read; setting this value will raise an exception. Currently, the only defined key is @"version" which has as a value an NSString uniquely describing a given decoder version. This string may not be suitable for user interface display. */
@available(OSX 10.5, *)
let kCISupportedDecoderVersionsKey: String

/** NSNumber (float) : A value in the range of 0...1, controling the amount of boost applied to the image. A value of 0 indicates no boost, i.e. linear response. Default is 1, full boost. */
@available(OSX 10.5, *)
let kCIInputBoostKey: String

/** NSNumber (float): The X value of the chromaticity. You can always query this value and you'll get the current X value for neutral X,Y. */
@available(OSX 10.5, *)
let kCIInputNeutralChromaticityXKey: String

/** NSNumber (float): The Y value of the chromaticity. You can always query this value and you'll get the current Y value for neutral X,Y. */
@available(OSX 10.5, *)
let kCIInputNeutralChromaticityYKey: String

/** NSNumber (float) : The color temperature to be considered neutral. You can always query this value and you'll get the current value for temperature. */
@available(OSX 10.5, *)
let kCIInputNeutralTemperatureKey: String

/** NSNumber (float) : The tint to be considered neutral. You can always query this value and you'll get the current value for tint. */
@available(OSX 10.5, *)
let kCIInputNeutralTintKey: String

/** CIVector : (x, y) location in geometric coordinates of the unrotated output image that should be used as neutral. You can't query this value - it's undefined for reading. */
@available(OSX 10.5, *)
let kCIInputNeutralLocationKey: String

/** NSNumber (float) : The desired scale factor at which the image will be eventually drawn. Setting this value can greatly improve the drawing performance. A value of 1 would mean identity, values smaller than 1 will result in a smaller output image. Changing the Scale Factor with enabled Draft Mode may also improve performance. */
@available(OSX 10.5, *)
let kCIInputScaleFactorKey: String

/** NSNumber (BOOL) : If the optional scale factor is smaller than a certain factor, additionally setting Draft Mode to YES can improve image decoding speed without any perceivable loss of quality. Setting this argument to YES will not have any effect if the Scale Factor isn't below a threshold where it would be of benefit. Switching of this value from YES to NO is an expensive operation, and it's not recommended to use Draft Mode if the same image will need to be drawn without Draft Mode at a later time. */
@available(OSX 10.5, *)
let kCIInputAllowDraftModeKey: String

/** NSNumber (BOOL) : Normally, an image is loaded in its proper orientation, given the associated metadata gives an indication about the orientation. For special purposes it may be useful to load the image in its physical orientation. The exact meaning of this is dependent on the image in question. The default value is NO. */
@available(OSX 10.5, *)
let kCIInputIgnoreImageOrientationKey: String

/**
 @const      kCIInputImageOrientationKey
 @abstract   kCIInputImageOrientationKey
 @discussion NSNumber (int) : Overriding this value allows the user to change the orientation of the image. The valid values are in range 1...8 and follow the EXIF specification. Changing this value makes for instance rotation in 90-degree increments easy. The value is disregarded when the kCIInputIgnoreImageOrientationKey flag is set.
 */
@available(OSX 10.5, *)
let kCIInputImageOrientationKey: String

/** NSNumber (BOOL) : Determines if the default sharpening should be on. default = YES. Has no effect if the image used for initialization was not RAW. */
@available(OSX 10.5, *)
let kCIInputEnableSharpeningKey: String

/** NSNumber (BOOL) : Determines if progressive chromatic noise tracking (based on ISO and exposure time) should be used. default = YES. Has no effect if the image used for initialization was not RAW. */
@available(OSX 10.5, *)
let kCIInputEnableChromaticNoiseTrackingKey: String

/** NSNumber (double) : The amount of noise reduction applied. Range is 0 to 1. */
@available(OSX 10.7, *)
let kCIInputNoiseReductionAmountKey: String

/** NSNumber (BOOL) : Determines if the default vendor lens correction be on. default = YES if raw image used for initialization contains lens distortion parameters. */
@available(OSX 10.10, *)
let kCIInputEnableVendorLensCorrectionKey: String

/** NSNumber (double) : The amount of luminance noise reduction applied. Range is 0 to 1. */
@available(OSX 10.10, *)
let kCIInputLuminanceNoiseReductionAmountKey: String

/** NSNumber (double) : The amount of color noise reduction applied. Range is 0 to 1. */
@available(OSX 10.10, *)
let kCIInputColorNoiseReductionAmountKey: String

/** NSNumber (double) : The amount of noise reduction sharpness applied. Range is 0 to 1. */
@available(OSX 10.10, *)
let kCIInputNoiseReductionSharpnessAmountKey: String

/** NSNumber (double) : The amount of noise reduction contrast applied. Range is 0 to 1. */
@available(OSX 10.10, *)
let kCIInputNoiseReductionContrastAmountKey: String

/** NSNumber (double) : The amount of noise reduction detail applied. Range is 0 to 1. */
@available(OSX 10.10, *)
let kCIInputNoiseReductionDetailAmountKey: String

/** NSNumber (float) : The amount to boost the shadow areas of the image. Can be used to lighten details in shadows. Has no effect if the image used for initialization was not RAW. */
@available(OSX 10.5, *)
let kCIInputBoostShadowAmountKey: String

/** CIFilter (id) : CIFilter to be applied to the RAW image while it is in linear space. */
@available(OSX 10.7, *)
let kCIInputLinearSpaceFilter: String

/** CIVector containing the full native size of the unscaled image. The vector's X value is the width, Y is the height. This is not affected by changing either kCIInputIgnoreImageOrientationKey or kCIInputImageOrientationKey. */
@available(OSX 10.5, *)
let kCIOutputNativeSizeKey: String

/** Read-only NSSet containing a list of keys that affect the output image. Depending on the RAW decoder version (kCIInputDecoderVersionKey) and the input image type, some input keys might have no effect. */
@available(OSX 10.7, *)
let kCIActiveKeys: String
@available(OSX 10.4, *)
class CISampler : NSObject, NSCopying {
  convenience init(image im: CIImage)
  init(image im: CIImage, options dict: [NSObject : AnyObject]?)
  var definition: CIFilterShape { get }
  var extent: CGRect { get }
  convenience init()
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

extension CISampler {
  convenience init(im: CIImage!, elements: (NSCopying, AnyObject)...)
}
@available(OSX 10.4, *)
let kCISamplerAffineMatrix: String
@available(OSX 10.4, *)
let kCISamplerWrapMode: String
@available(OSX 10.4, *)
let kCISamplerFilterMode: String
@available(OSX 10.4, *)
let kCISamplerWrapBlack: String
@available(OSX 10.4, *)
let kCISamplerWrapClamp: String
@available(OSX 10.4, *)
let kCISamplerFilterNearest: String
@available(OSX 10.4, *)
let kCISamplerFilterLinear: String
@available(OSX 10.4, *)
let kCISamplerColorSpace: String
@available(OSX 10.4, *)
class CIVector : NSObject, NSCopying, NSSecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  @available(OSX 10.9, *)
  convenience init(CGPoint p: CGPoint)
  @available(OSX 10.9, *)
  convenience init(CGRect r: CGRect)
  @available(OSX 10.9, *)
  convenience init(CGAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func valueAtIndex(index: Int) -> CGFloat
  var count: Int { get }
  var X: CGFloat { get }
  var Y: CGFloat { get }
  var Z: CGFloat { get }
  var W: CGFloat { get }
  @available(OSX 10.9, *)
  var CGPointValue: CGPoint { get }
  @available(OSX 10.9, *)
  var CGRectValue: CGRect { get }
  @available(OSX 10.9, *)
  var CGAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  convenience init()
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
