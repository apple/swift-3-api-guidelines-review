
@available(OSX 10.11, *)
enum NSPersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
@available(OSX 10.11, *)
struct NSPersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: NSPersonNameComponentsFormatterOptions { get }
}
@available(OSX 10.11, *)
class NSPersonNameComponentsFormatter : NSFormatter {
  var style: NSPersonNameComponentsFormatterStyle
  var phonetic: Bool
  class func localizedStringFromPersonNameComponents(components: NSPersonNameComponents, style nameFormatStyle: NSPersonNameComponentsFormatterStyle, options nameOptions: NSPersonNameComponentsFormatterOptions) -> String
  func stringFromPersonNameComponents(components: NSPersonNameComponents) -> String
  func annotatedStringFromPersonNameComponents(components: NSPersonNameComponents) -> NSAttributedString
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
let NSPersonNameComponentKey: String
@available(OSX 10.11, *)
let NSPersonNameComponentGivenName: String
@available(OSX 10.11, *)
let NSPersonNameComponentFamilyName: String
@available(OSX 10.11, *)
let NSPersonNameComponentMiddleName: String
@available(OSX 10.11, *)
let NSPersonNameComponentPrefix: String
@available(OSX 10.11, *)
let NSPersonNameComponentSuffix: String
@available(OSX 10.11, *)
let NSPersonNameComponentNickname: String
@available(OSX 10.11, *)
let NSPersonNameComponentDelimiter: String
