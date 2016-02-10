
@available(OSX 10.11, *)
enum PersonNameComponentsFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case short
  case medium
  case long
  case abbreviated
}
@available(OSX 10.11, *)
struct PersonNameComponentsFormatterOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var phonetic: PersonNameComponentsFormatterOptions { get }
}
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
let personNameComponentKey: String
@available(OSX 10.11, *)
let personNameComponentGivenName: String
@available(OSX 10.11, *)
let personNameComponentFamilyName: String
@available(OSX 10.11, *)
let personNameComponentMiddleName: String
@available(OSX 10.11, *)
let personNameComponentPrefix: String
@available(OSX 10.11, *)
let personNameComponentSuffix: String
@available(OSX 10.11, *)
let personNameComponentNickname: String
@available(OSX 10.11, *)
let personNameComponentDelimiter: String
