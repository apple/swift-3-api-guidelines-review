
@available(watchOS 2.0, *)
enum NSPersonNameComponentsFormatterStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Short
  case Medium
  case Long
  case Abbreviated
}
@available(watchOS 2.0, *)
struct NSPersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Phonetic: NSPersonNameComponentsFormatterOptions { get }
}
@available(watchOS 2.0, *)
class NSPersonNameComponentsFormatter : NSFormatter {
  var style: NSPersonNameComponentsFormatterStyle
  var phonetic: Bool
  class func localizedStringFromPersonNameComponents(_ components: NSPersonNameComponents, style nameFormatStyle: NSPersonNameComponentsFormatterStyle, options nameOptions: NSPersonNameComponentsFormatterOptions) -> String
  func stringFromPersonNameComponents(_ components: NSPersonNameComponents) -> String
  func annotatedStringFromPersonNameComponents(_ components: NSPersonNameComponents) -> NSAttributedString
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
