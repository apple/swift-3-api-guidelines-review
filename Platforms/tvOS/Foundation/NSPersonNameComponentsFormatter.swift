
@available(tvOS 9.0, *)
enum PersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case short
  case medium
  case long
  case abbreviated
}
@available(tvOS 9.0, *)
struct PersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var phonetic: PersonNameComponentsFormatterOptions { get }
}
@available(tvOS 9.0, *)
class PersonNameComponentsFormatter : Formatter {
  var style: PersonNameComponentsFormatterStyle
  var isPhonetic: Bool
  class func localizedString(from components: PersonNameComponents, style nameFormatStyle: PersonNameComponentsFormatterStyle, options nameOptions: PersonNameComponentsFormatterOptions = []) -> String
  func string(from components: PersonNameComponents) -> String
  func annotatedString(from components: PersonNameComponents) -> AttributedString
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
@available(tvOS 9.0, *)
let personNameComponentKey: String
@available(tvOS 9.0, *)
let personNameComponentGivenName: String
@available(tvOS 9.0, *)
let personNameComponentFamilyName: String
@available(tvOS 9.0, *)
let personNameComponentMiddleName: String
@available(tvOS 9.0, *)
let personNameComponentPrefix: String
@available(tvOS 9.0, *)
let personNameComponentSuffix: String
@available(tvOS 9.0, *)
let personNameComponentNickname: String
@available(tvOS 9.0, *)
let personNameComponentDelimiter: String
