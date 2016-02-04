
@available(tvOS 7.0, *)
struct UIFontDescriptorSymbolicTraits : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TraitItalic: UIFontDescriptorSymbolicTraits { get }
  static var TraitBold: UIFontDescriptorSymbolicTraits { get }
  static var TraitExpanded: UIFontDescriptorSymbolicTraits { get }
  static var TraitCondensed: UIFontDescriptorSymbolicTraits { get }
  static var TraitMonoSpace: UIFontDescriptorSymbolicTraits { get }
  static var TraitVertical: UIFontDescriptorSymbolicTraits { get }
  static var TraitUIOptimized: UIFontDescriptorSymbolicTraits { get }
  static var TraitTightLeading: UIFontDescriptorSymbolicTraits { get }
  static var TraitLooseLeading: UIFontDescriptorSymbolicTraits { get }
  static var ClassMask: UIFontDescriptorSymbolicTraits { get }
  static var ClassUnknown: UIFontDescriptorSymbolicTraits { get }
  static var ClassOldStyleSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassTransitionalSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassModernSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassClarendonSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassSlabSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassFreeformSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassSansSerif: UIFontDescriptorSymbolicTraits { get }
  static var ClassOrnamentals: UIFontDescriptorSymbolicTraits { get }
  static var ClassScripts: UIFontDescriptorSymbolicTraits { get }
  static var ClassSymbolic: UIFontDescriptorSymbolicTraits { get }
}
typealias UIFontDescriptorClass = Int
@available(tvOS 7.0, *)
class UIFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  convenience init()
  init?(coder aDecoder: NSCoder)
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptorSymbolicTraits { get }
  func objectForKey(anAttribute: String) -> AnyObject?
  func fontAttributes() -> [String : AnyObject]
  func matchingFontDescriptorsWithMandatoryKeys(mandatoryKeys: Set<String>?) -> [UIFontDescriptor]
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix: CGAffineTransform)
  class func preferredFontDescriptorWithTextStyle(style: String) -> UIFontDescriptor
  init(fontAttributes attributes: [String : AnyObject])
  func fontDescriptorByAddingAttributes(attributes: [String : AnyObject]) -> UIFontDescriptor
  func fontDescriptorWithSymbolicTraits(symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func fontDescriptorWithSize(newPointSize: CGFloat) -> UIFontDescriptor
  func fontDescriptorWithMatrix(matrix: CGAffineTransform) -> UIFontDescriptor
  func fontDescriptorWithFace(newFace: String) -> UIFontDescriptor
  func fontDescriptorWithFamily(newFamily: String) -> UIFontDescriptor
  @available(tvOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
@available(tvOS 7.0, *)
let UIFontDescriptorFamilyAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorNameAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorFaceAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorSizeAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorVisibleNameAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorMatrixAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorCharacterSetAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorCascadeListAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorTraitsAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorFixedAdvanceAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorFeatureSettingsAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorTextStyleAttribute: String
@available(tvOS 7.0, *)
let UIFontSymbolicTrait: String
@available(tvOS 7.0, *)
let UIFontWeightTrait: String
@available(tvOS 7.0, *)
let UIFontWidthTrait: String
@available(tvOS 7.0, *)
let UIFontSlantTrait: String
@available(tvOS 8.2, *)
let UIFontWeightUltraLight: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightThin: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightLight: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightRegular: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightMedium: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightSemibold: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightBold: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightHeavy: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightBlack: CGFloat
@available(tvOS 7.0, *)
let UIFontFeatureTypeIdentifierKey: String
@available(tvOS 7.0, *)
let UIFontFeatureSelectorIdentifierKey: String
@available(tvOS 9.0, *)
let UIFontTextStyleTitle1: String
@available(tvOS 9.0, *)
let UIFontTextStyleTitle2: String
@available(tvOS 9.0, *)
let UIFontTextStyleTitle3: String
@available(tvOS 7.0, *)
let UIFontTextStyleHeadline: String
@available(tvOS 7.0, *)
let UIFontTextStyleSubheadline: String
@available(tvOS 7.0, *)
let UIFontTextStyleBody: String
@available(tvOS 9.0, *)
let UIFontTextStyleCallout: String
@available(tvOS 7.0, *)
let UIFontTextStyleFootnote: String
@available(tvOS 7.0, *)
let UIFontTextStyleCaption1: String
@available(tvOS 7.0, *)
let UIFontTextStyleCaption2: String
