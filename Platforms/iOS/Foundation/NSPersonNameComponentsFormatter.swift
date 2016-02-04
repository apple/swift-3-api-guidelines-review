
@available(iOS 9.0, *)
enum NSPersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
@available(iOS 9.0, *)
struct NSPersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: NSPersonNameComponentsFormatterOptions { get }
}
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
let NSPersonNameComponentKey: String
@available(iOS 9.0, *)
let NSPersonNameComponentGivenName: String
@available(iOS 9.0, *)
let NSPersonNameComponentFamilyName: String
@available(iOS 9.0, *)
let NSPersonNameComponentMiddleName: String
@available(iOS 9.0, *)
let NSPersonNameComponentPrefix: String
@available(iOS 9.0, *)
let NSPersonNameComponentSuffix: String
@available(iOS 9.0, *)
let NSPersonNameComponentNickname: String
@available(iOS 9.0, *)
let NSPersonNameComponentDelimiter: String
