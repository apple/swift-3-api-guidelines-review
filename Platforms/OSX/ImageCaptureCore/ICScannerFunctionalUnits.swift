
enum ICScannerFunctionalUnitType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Flatbed
  case PositiveTransparency
  case NegativeTransparency
  case DocumentFeeder
}
enum ICScannerMeasurementUnit : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Inches
  case Centimeters
  case Picas
  case Points
  case Twips
  case Pixels
}
enum ICScannerBitDepth : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Depth1Bit
  case Depth8Bits
  case Depth16Bits
}
enum ICScannerColorDataFormatType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Chunky
  case Planar
}
enum ICScannerPixelDataType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case BW
  case Gray
  case RGB
  case Palette
  case CMY
  case CMYK
  case YUV
  case YUVK
  case CIEXYZ
}
enum ICScannerDocumentType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case TypeDefault
  case TypeA4
  case TypeB5
  case TypeUSLetter
  case TypeUSLegal
  case TypeA5
  case TypeISOB4
  case TypeISOB6
  case TypeUSLedger
  case TypeUSExecutive
  case TypeA3
  case TypeISOB3
  case TypeA6
  case TypeC4
  case TypeC5
  case TypeC6
  case Type4A0
  case Type2A0
  case TypeA0
  case TypeA1
  case TypeA2
  case TypeA7
  case TypeA8
  case TypeA9
  case Type10
  case TypeISOB0
  case TypeISOB1
  case TypeISOB2
  case TypeISOB5
  case TypeISOB7
  case TypeISOB8
  case TypeISOB9
  case TypeISOB10
  case TypeJISB0
  case TypeJISB1
  case TypeJISB2
  case TypeJISB3
  case TypeJISB4
  case TypeJISB6
  case TypeJISB7
  case TypeJISB8
  case TypeJISB9
  case TypeJISB10
  case TypeC0
  case TypeC1
  case TypeC2
  case TypeC3
  case TypeC7
  case TypeC8
  case TypeC9
  case TypeC10
  case TypeUSStatement
  case TypeBusinessCard
  case TypeE
  case Type3R
  case Type4R
  case Type5R
  case Type6R
  case Type8R
  case TypeS8R
  case Type10R
  case TypeS10R
  case Type11R
  case Type12R
  case TypeS12R
  case Type110
  case TypeAPSH
  case TypeAPSC
  case TypeAPSP
  case Type135
  case TypeMF
  case TypeLF
}
enum ICScannerFunctionalUnitState : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Ready
  case ScanInProgress
  case OverviewScanInProgress
}
enum ICScannerFeatureType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Enumeration
  case Range
  case Boolean
  case Template
}
class ICScannerFeature : NSObject {
  var type: ICScannerFeatureType { get }
  var internalName: String? { get }
  var humanReadableName: String? { get }
  var tooltip: String? { get }
}
class ICScannerFeatureEnumeration : ICScannerFeature {
  unowned(unsafe) var currentValue: @sil_unmanaged AnyObject
  var defaultValue: AnyObject { get }
  var values: [NSNumber] { get }
  var menuItemLabels: [String] { get }
  var menuItemLabelsTooltips: [String] { get }
}
class ICScannerFeatureRange : ICScannerFeature {
  var currentValue: CGFloat
  var defaultValue: CGFloat { get }
  var minValue: CGFloat { get }
  var maxValue: CGFloat { get }
  var stepSize: CGFloat { get }
}
class ICScannerFeatureBoolean : ICScannerFeature {
  var value: Bool
}
class ICScannerFeatureTemplate : ICScannerFeature {
  var targets: [NSMutableArray] { get }
}
class ICScannerFunctionalUnit : NSObject {
  var type: ICScannerFunctionalUnitType { get }
  var pixelDataType: ICScannerPixelDataType
  var supportedBitDepths: NSIndexSet { get }
  var bitDepth: ICScannerBitDepth
  var supportedMeasurementUnits: NSIndexSet { get }
  var measurementUnit: ICScannerMeasurementUnit
  var supportedResolutions: NSIndexSet { get }
  var preferredResolutions: NSIndexSet { get }
  var resolution: Int
  var nativeXResolution: Int { get }
  var nativeYResolution: Int { get }
  var supportedScaleFactors: NSIndexSet { get }
  var preferredScaleFactors: NSIndexSet { get }
  var scaleFactor: Int
  var templates: [ICScannerFeatureTemplate] { get }
  var vendorFeatures: [ICScannerFeature]? { get }
  var physicalSize: NSSize { get }
  var scanArea: NSRect
  var scanAreaOrientation: ICEXIFOrientationType
  var acceptsThresholdForBlackAndWhiteScanning: Bool { get }
  var usesThresholdForBlackAndWhiteScanning: Bool
  var defaultThresholdForBlackAndWhiteScanning: UInt8 { get }
  var thresholdForBlackAndWhiteScanning: UInt8
  var state: ICScannerFunctionalUnitState { get }
  var scanInProgress: Bool { get }
  var scanProgressPercentDone: CGFloat { get }
  var canPerformOverviewScan: Bool { get }
  var overviewScanInProgress: Bool { get }
  var overviewImage: CGImage? { get }
  var overviewResolution: Int
}
class ICScannerFunctionalUnitFlatbed : ICScannerFunctionalUnit {
  var supportedDocumentTypes: NSIndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: NSSize { get }
}
class ICScannerFunctionalUnitPositiveTransparency : ICScannerFunctionalUnit {
  var supportedDocumentTypes: NSIndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: NSSize { get }
}
class ICScannerFunctionalUnitNegativeTransparency : ICScannerFunctionalUnit {
  var supportedDocumentTypes: NSIndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: NSSize { get }
}
class ICScannerFunctionalUnitDocumentFeeder : ICScannerFunctionalUnit {
  var supportedDocumentTypes: NSIndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: NSSize { get }
  var supportsDuplexScanning: Bool { get }
  var duplexScanningEnabled: Bool
  var documentLoaded: Bool { get }
  var oddPageOrientation: ICEXIFOrientationType
  var evenPageOrientation: ICEXIFOrientationType
  var reverseFeederPageOrder: Bool { get }
}
