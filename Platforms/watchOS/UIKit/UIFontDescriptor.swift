
@available(watchOS 2.0, *)
struct UIFontDescriptorSymbolicTraits : OptionSetType {
  init(rawValue rawValue: UInt32)
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
@available(watchOS 2.0, *)
class UIFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  init?(coder aDecoder: NSCoder)
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptorSymbolicTraits { get }
  func objectForKey(_ anAttribute: String) -> AnyObject?
  func fontAttributes() -> [String : AnyObject]
  func matchingFontDescriptorsWithMandatoryKeys(_ mandatoryKeys: Set<String>?) -> [UIFontDescriptor]
  /*not inherited*/ init(name fontName: String, size size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix matrix: CGAffineTransform)
  class func preferredFontDescriptorWithTextStyle(_ style: String) -> UIFontDescriptor
  init(fontAttributes attributes: [String : AnyObject])
  func fontDescriptorByAddingAttributes(_ attributes: [String : AnyObject]) -> UIFontDescriptor
  func fontDescriptorWithSymbolicTraits(_ symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func fontDescriptorWithSize(_ newPointSize: CGFloat) -> UIFontDescriptor
  func fontDescriptorWithMatrix(_ matrix: CGAffineTransform) -> UIFontDescriptor
  func fontDescriptorWithFace(_ newFace: String) -> UIFontDescriptor
  func fontDescriptorWithFamily(_ newFamily: String) -> UIFontDescriptor
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
@available(watchOS 2.0, *)
let UIFontDescriptorFamilyAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorNameAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorFaceAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorSizeAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorVisibleNameAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorMatrixAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorCharacterSetAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorCascadeListAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorTraitsAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorFixedAdvanceAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorFeatureSettingsAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorTextStyleAttribute: String
@available(watchOS 2.0, *)
let UIFontSymbolicTrait: String
@available(watchOS 2.0, *)
let UIFontWeightTrait: String
@available(watchOS 2.0, *)
let UIFontWidthTrait: String
@available(watchOS 2.0, *)
let UIFontSlantTrait: String
@available(watchOS 2.0, *)
let UIFontWeightUltraLight: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightThin: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightLight: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightRegular: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightMedium: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightSemibold: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightBold: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightHeavy: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightBlack: CGFloat
@available(watchOS 2.0, *)
let UIFontFeatureTypeIdentifierKey: String
@available(watchOS 2.0, *)
let UIFontFeatureSelectorIdentifierKey: String
@available(watchOS 2.0, *)
let UIFontTextStyleTitle1: String
@available(watchOS 2.0, *)
let UIFontTextStyleTitle2: String
@available(watchOS 2.0, *)
let UIFontTextStyleTitle3: String
@available(watchOS 2.0, *)
let UIFontTextStyleHeadline: String
@available(watchOS 2.0, *)
let UIFontTextStyleSubheadline: String
@available(watchOS 2.0, *)
let UIFontTextStyleBody: String
@available(watchOS 2.0, *)
let UIFontTextStyleCallout: String
@available(watchOS 2.0, *)
let UIFontTextStyleFootnote: String
@available(watchOS 2.0, *)
let UIFontTextStyleCaption1: String
@available(watchOS 2.0, *)
let UIFontTextStyleCaption2: String
