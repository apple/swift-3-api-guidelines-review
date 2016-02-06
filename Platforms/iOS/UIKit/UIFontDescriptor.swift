
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
class UIFontDescriptor : Object, Copying, SecureCoding {
  convenience init()
  init?(coder aDecoder: Coder)
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptorSymbolicTraits { get }
  func objectFor(key anAttribute: String) -> AnyObject?
  func fontAttributes() -> [String : AnyObject]
  func matchingFontDescriptorsWith(mandatoryKeys mandatoryKeys: Set<String>?) -> [UIFontDescriptor]
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix: CGAffineTransform)
  class func preferredFontDescriptorWith(textStyle style: String) -> UIFontDescriptor
  init(fontAttributes attributes: [String : AnyObject] = [:])
  func addingAttributes(attributes: [String : AnyObject] = [:]) -> UIFontDescriptor
  func withSymbolicTraits(symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func withSize(newPointSize: CGFloat) -> UIFontDescriptor
  func withMatrix(matrix: CGAffineTransform) -> UIFontDescriptor
  func withFace(newFace: String) -> UIFontDescriptor
  func withFamily(newFamily: String) -> UIFontDescriptor
  @available(iOS 7.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
}
@available(iOS 7.0, *)
let UIFontDescriptorFamilyAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorNameAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFaceAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorSizeAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorVisibleNameAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorMatrixAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorCharacterSetAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorCascadeListAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorTraitsAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFixedAdvanceAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFeatureSettingsAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorTextStyleAttribute: String
@available(iOS 7.0, *)
let UIFontSymbolicTrait: String
@available(iOS 7.0, *)
let UIFontWeightTrait: String
@available(iOS 7.0, *)
let UIFontWidthTrait: String
@available(iOS 7.0, *)
let UIFontSlantTrait: String
@available(iOS 8.2, *)
let UIFontWeightUltraLight: CGFloat
@available(iOS 8.2, *)
let UIFontWeightThin: CGFloat
@available(iOS 8.2, *)
let UIFontWeightLight: CGFloat
@available(iOS 8.2, *)
let UIFontWeightRegular: CGFloat
@available(iOS 8.2, *)
let UIFontWeightMedium: CGFloat
@available(iOS 8.2, *)
let UIFontWeightSemibold: CGFloat
@available(iOS 8.2, *)
let UIFontWeightBold: CGFloat
@available(iOS 8.2, *)
let UIFontWeightHeavy: CGFloat
@available(iOS 8.2, *)
let UIFontWeightBlack: CGFloat
@available(iOS 7.0, *)
let UIFontFeatureTypeIdentifierKey: String
@available(iOS 7.0, *)
let UIFontFeatureSelectorIdentifierKey: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle1: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle2: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle3: String
@available(iOS 7.0, *)
let UIFontTextStyleHeadline: String
@available(iOS 7.0, *)
let UIFontTextStyleSubheadline: String
@available(iOS 7.0, *)
let UIFontTextStyleBody: String
@available(iOS 9.0, *)
let UIFontTextStyleCallout: String
@available(iOS 7.0, *)
let UIFontTextStyleFootnote: String
@available(iOS 7.0, *)
let UIFontTextStyleCaption1: String
@available(iOS 7.0, *)
let UIFontTextStyleCaption2: String
