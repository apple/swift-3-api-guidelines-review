
struct TextCheckingType : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var orthography: TextCheckingType { get }
  static var spelling: TextCheckingType { get }
  static var grammar: TextCheckingType { get }
  static var date: TextCheckingType { get }
  static var address: TextCheckingType { get }
  static var link: TextCheckingType { get }
  static var quote: TextCheckingType { get }
  static var dash: TextCheckingType { get }
  static var replacement: TextCheckingType { get }
  static var correction: TextCheckingType { get }
  @available(tvOS 4.0, *)
  static var regularExpression: TextCheckingType { get }
  @available(tvOS 4.0, *)
  static var phoneNumber: TextCheckingType { get }
  @available(tvOS 4.0, *)
  static var transitInformation: TextCheckingType { get }
}
typealias TextCheckingTypes = UInt64
var textCheckingAllSystemTypes: TextCheckingTypes { get }
var textCheckingAllCustomTypes: TextCheckingTypes { get }
var textCheckingAllTypes: TextCheckingTypes { get }
@available(tvOS 4.0, *)
class TextCheckingResult : Object, Copying, Coding {
  var resultType: TextCheckingType { get }
  var range: NSRange { get }
  init()
  @available(tvOS 4.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TextCheckingResult {
  @NSCopying var orthography: Orthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: Date? { get }
  @NSCopying var timeZone: TimeZone? { get }
  var duration: TimeInterval { get }
  @available(tvOS 4.0, *)
  var components: [String : String]? { get }
  @NSCopying var url: URL? { get }
  var replacementString: String? { get }
  @available(tvOS 7.0, *)
  var alternativeStrings: [String]? { get }
  @available(tvOS 4.0, *)
  @NSCopying var regularExpression: RegularExpression? { get }
  @available(tvOS 4.0, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(tvOS 4.0, *)
  var numberOfRanges: Int { get }
  @available(tvOS 4.0, *)
  func range(at idx: Int) -> NSRange
  @available(tvOS 5.0, *)
  func adjustingRanges(withOffset offset: Int) -> TextCheckingResult
}
@available(tvOS 4.0, *)
let textCheckingNameKey: String
@available(tvOS 4.0, *)
let textCheckingJobTitleKey: String
@available(tvOS 4.0, *)
let textCheckingOrganizationKey: String
@available(tvOS 4.0, *)
let textCheckingStreetKey: String
@available(tvOS 4.0, *)
let textCheckingCityKey: String
@available(tvOS 4.0, *)
let textCheckingStateKey: String
@available(tvOS 4.0, *)
let textCheckingZIPKey: String
@available(tvOS 4.0, *)
let textCheckingCountryKey: String
@available(tvOS 4.0, *)
let textCheckingPhoneKey: String
@available(tvOS 4.0, *)
let textCheckingAirlineKey: String
@available(tvOS 4.0, *)
let textCheckingFlightKey: String
extension TextCheckingResult {
  class func orthographyCheckingResult(withRange range: NSRange, orthography: Orthography) -> TextCheckingResult
  class func spell(range: NSRange) -> TextCheckingResult
  class func grammarCheckingResult(withRange range: NSRange, details: [String]) -> TextCheckingResult
  class func dateCheckingResult(withRange range: NSRange, date: Date) -> TextCheckingResult
  class func dateCheckingResult(withRange range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> TextCheckingResult
  class func addressCheckingResult(withRange range: NSRange, components: [String : String]) -> TextCheckingResult
  class func linkCheckingResult(withRange range: NSRange, url: URL) -> TextCheckingResult
  class func quoteCheckingResult(withRange range: NSRange, replacementString: String) -> TextCheckingResult
  class func dashCheckingResult(withRange range: NSRange, replacementString: String) -> TextCheckingResult
  class func replacementCheckingResult(withRange range: NSRange, replacementString: String) -> TextCheckingResult
  class func correctionCheckingResult(withRange range: NSRange, replacementString: String) -> TextCheckingResult
  @available(tvOS 7.0, *)
  class func correctionCheckingResult(withRange range: NSRange, replacementString: String, alternativeStrings: [String]) -> TextCheckingResult
  @available(tvOS 4.0, *)
  class func regularExpressionCheckingResult(withRanges ranges: RangePointer, count: Int, regularExpression: RegularExpression) -> TextCheckingResult
  @available(tvOS 4.0, *)
  class func phoneNumber(range: NSRange, phoneNumber: String) -> TextCheckingResult
  @available(tvOS 4.0, *)
  class func transitInformationCheckingResult(withRange range: NSRange, components: [String : String]) -> TextCheckingResult
}
