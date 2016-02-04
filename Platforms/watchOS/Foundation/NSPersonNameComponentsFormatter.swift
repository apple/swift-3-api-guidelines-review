
@available(watchOS 2.0, *)
enum NSPersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
@available(watchOS 2.0, *)
struct NSPersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: NSPersonNameComponentsFormatterOptions { get }
}
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
let NSPersonNameComponentKey: String
@available(watchOS 2.0, *)
let NSPersonNameComponentGivenName: String
@available(watchOS 2.0, *)
let NSPersonNameComponentFamilyName: String
@available(watchOS 2.0, *)
let NSPersonNameComponentMiddleName: String
@available(watchOS 2.0, *)
let NSPersonNameComponentPrefix: String
@available(watchOS 2.0, *)
let NSPersonNameComponentSuffix: String
@available(watchOS 2.0, *)
let NSPersonNameComponentNickname: String
@available(watchOS 2.0, *)
let NSPersonNameComponentDelimiter: String
