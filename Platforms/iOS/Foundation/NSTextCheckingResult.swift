
struct TextCheckingType : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var Orthography: TextCheckingType { get }
  static var Spelling: TextCheckingType { get }
  static var Grammar: TextCheckingType { get }
  static var Date: TextCheckingType { get }
  static var Address: TextCheckingType { get }
  static var Link: TextCheckingType { get }
  static var Quote: TextCheckingType { get }
  static var Dash: TextCheckingType { get }
  static var Replacement: TextCheckingType { get }
  static var Correction: TextCheckingType { get }
  @available(iOS 4.0, *)
  static var RegularExpression: TextCheckingType { get }
  @available(iOS 4.0, *)
  static var PhoneNumber: TextCheckingType { get }
  @available(iOS 4.0, *)
  static var TransitInformation: TextCheckingType { get }
}
typealias TextCheckingTypes = UInt64
var textCheckingAllSystemTypes: TextCheckingTypes { get }
var textCheckingAllCustomTypes: TextCheckingTypes { get }
var textCheckingAllTypes: TextCheckingTypes { get }
@available(iOS 4.0, *)
class TextCheckingResult : Object, Copying, Coding {
  var resultType: TextCheckingType { get }
  var range: NSRange { get }
  init()
  @available(iOS 4.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TextCheckingResult {
  @NSCopying var orthography: Orthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: Date? { get }
  @NSCopying var timeZone: TimeZone? { get }
  var duration: TimeInterval { get }
  @available(iOS 4.0, *)
  var components: [String : String]? { get }
  @NSCopying var url: URL? { get }
  var replacementString: String? { get }
  @available(iOS 7.0, *)
  var alternativeStrings: [String]? { get }
  @available(iOS 4.0, *)
  @NSCopying var regularExpression: RegularExpression? { get }
  @available(iOS 4.0, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(iOS 4.0, *)
  var numberOfRanges: Int { get }
  @available(iOS 4.0, *)
  func rangeAt(idx: Int) -> NSRange
  @available(iOS 5.0, *)
  func adjustingRangesWithOffset(offset: Int) -> TextCheckingResult
}
@available(iOS 4.0, *)
let textCheckingNameKey: String
@available(iOS 4.0, *)
let textCheckingJobTitleKey: String
@available(iOS 4.0, *)
let textCheckingOrganizationKey: String
@available(iOS 4.0, *)
let textCheckingStreetKey: String
@available(iOS 4.0, *)
let textCheckingCityKey: String
@available(iOS 4.0, *)
let textCheckingStateKey: String
@available(iOS 4.0, *)
let textCheckingZIPKey: String
@available(iOS 4.0, *)
let textCheckingCountryKey: String
@available(iOS 4.0, *)
let textCheckingPhoneKey: String
@available(iOS 4.0, *)
let textCheckingAirlineKey: String
@available(iOS 4.0, *)
let textCheckingFlightKey: String
extension TextCheckingResult {
  class func orthographyCheckingResultWith(range: NSRange, orthography: Orthography) -> TextCheckingResult
  class func spellWith(range: NSRange) -> TextCheckingResult
  class func grammarCheckingResultWith(range: NSRange, details: [String]) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> TextCheckingResult
  class func addressCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
  class func linkCheckingResultWith(range: NSRange, url: URL) -> TextCheckingResult
  class func quoteCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func dashCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func replacementCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func correctionCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  @available(iOS 7.0, *)
  class func correctionCheckingResultWith(range: NSRange, replacementString: String, alternativeStrings: [String]) -> TextCheckingResult
  @available(iOS 4.0, *)
  class func regularExpressionCheckingResultWithRanges(ranges: RangePointer, count: Int, regularExpression: RegularExpression) -> TextCheckingResult
  @available(iOS 4.0, *)
  class func phoneNumberWith(range: NSRange, phoneNumber: String) -> TextCheckingResult
  @available(iOS 4.0, *)
  class func transitInformationCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
}
