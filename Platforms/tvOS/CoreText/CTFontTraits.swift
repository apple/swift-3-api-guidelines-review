
@available(tvOS 3.2, *)
let kCTFontSymbolicTrait: CFString
@available(tvOS 3.2, *)
let kCTFontWeightTrait: CFString
@available(tvOS 3.2, *)
let kCTFontWidthTrait: CFString
@available(tvOS 3.2, *)
let kCTFontSlantTrait: CFString
var kCTFontClassMaskShift: Int { get }
struct CTFontSymbolicTraits : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TraitItalic: CTFontSymbolicTraits { get }
  static var TraitBold: CTFontSymbolicTraits { get }
  static var TraitExpanded: CTFontSymbolicTraits { get }
  static var TraitCondensed: CTFontSymbolicTraits { get }
  static var TraitMonoSpace: CTFontSymbolicTraits { get }
  static var TraitVertical: CTFontSymbolicTraits { get }
  static var TraitUIOptimized: CTFontSymbolicTraits { get }
  static var TraitColorGlyphs: CTFontSymbolicTraits { get }
  static var TraitComposite: CTFontSymbolicTraits { get }
  static var TraitClassMask: CTFontSymbolicTraits { get }
  static var ItalicTrait: CTFontSymbolicTraits { get }
  static var BoldTrait: CTFontSymbolicTraits { get }
  static var ExpandedTrait: CTFontSymbolicTraits { get }
  static var CondensedTrait: CTFontSymbolicTraits { get }
  static var MonoSpaceTrait: CTFontSymbolicTraits { get }
  static var VerticalTrait: CTFontSymbolicTraits { get }
  static var UIOptimizedTrait: CTFontSymbolicTraits { get }
  static var ColorGlyphsTrait: CTFontSymbolicTraits { get }
  static var CompositeTrait: CTFontSymbolicTraits { get }
  static var ClassMaskTrait: CTFontSymbolicTraits { get }
}
struct CTFontStylisticClass : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ClassUnknown: CTFontStylisticClass { get }
  static var ClassOldStyleSerifs: CTFontStylisticClass { get }
  static var ClassTransitionalSerifs: CTFontStylisticClass { get }
  static var ClassModernSerifs: CTFontStylisticClass { get }
  static var ClassClarendonSerifs: CTFontStylisticClass { get }
  static var ClassSlabSerifs: CTFontStylisticClass { get }
  static var ClassFreeformSerifs: CTFontStylisticClass { get }
  static var ClassSansSerif: CTFontStylisticClass { get }
  static var ClassOrnamentals: CTFontStylisticClass { get }
  static var ClassScripts: CTFontStylisticClass { get }
  static var ClassSymbolic: CTFontStylisticClass { get }
  static var UnknownClass: CTFontStylisticClass { get }
  static var OldStyleSerifsClass: CTFontStylisticClass { get }
  static var TransitionalSerifsClass: CTFontStylisticClass { get }
  static var ModernSerifsClass: CTFontStylisticClass { get }
  static var ClarendonSerifsClass: CTFontStylisticClass { get }
  static var SlabSerifsClass: CTFontStylisticClass { get }
  static var FreeformSerifsClass: CTFontStylisticClass { get }
  static var SansSerifClass: CTFontStylisticClass { get }
  static var OrnamentalsClass: CTFontStylisticClass { get }
  static var ScriptsClass: CTFontStylisticClass { get }
  static var SymbolicClass: CTFontStylisticClass { get }
}
