
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
  @available(OSX 10.7, *)
  static var RegularExpression: TextCheckingType { get }
  @available(OSX 10.7, *)
  static var PhoneNumber: TextCheckingType { get }
  @available(OSX 10.7, *)
  static var TransitInformation: TextCheckingType { get }
}
typealias TextCheckingTypes = UInt64
var textCheckingAllSystemTypes: TextCheckingTypes { get }
var textCheckingAllCustomTypes: TextCheckingTypes { get }
var textCheckingAllTypes: TextCheckingTypes { get }
@available(OSX 10.6, *)
class TextCheckingResult : Object, Copying, Coding {
  var resultType: TextCheckingType { get }
  var range: NSRange { get }
  init()
  @available(OSX 10.6, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TextCheckingResult {
  @NSCopying var orthography: Orthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: Date? { get }
  @NSCopying var timeZone: TimeZone? { get }
  var duration: TimeInterval { get }
  @available(OSX 10.7, *)
  var components: [String : String]? { get }
  @NSCopying var url: URL? { get }
  var replacementString: String? { get }
  @available(OSX 10.9, *)
  var alternativeStrings: [String]? { get }
  @available(OSX 10.7, *)
  @NSCopying var regularExpression: RegularExpression? { get }
  @available(OSX 10.7, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(OSX 10.7, *)
  var numberOfRanges: Int { get }
  @available(OSX 10.7, *)
  func rangeAt(idx: Int) -> NSRange
  @available(OSX 10.7, *)
  func adjustingRangesWith(offset offset: Int) -> TextCheckingResult
}
@available(OSX 10.6, *)
let textCheckingNameKey: String
@available(OSX 10.6, *)
let textCheckingJobTitleKey: String
@available(OSX 10.6, *)
let textCheckingOrganizationKey: String
@available(OSX 10.6, *)
let textCheckingStreetKey: String
@available(OSX 10.6, *)
let textCheckingCityKey: String
@available(OSX 10.6, *)
let textCheckingStateKey: String
@available(OSX 10.6, *)
let textCheckingZIPKey: String
@available(OSX 10.6, *)
let textCheckingCountryKey: String
@available(OSX 10.6, *)
let textCheckingPhoneKey: String
@available(OSX 10.7, *)
let textCheckingAirlineKey: String
@available(OSX 10.7, *)
let textCheckingFlightKey: String
extension TextCheckingResult {
  class func orthographyCheckingResultWith(range: NSRange, orthography: Orthography) -> TextCheckingResult
  class func spell(range: NSRange) -> TextCheckingResult
  class func grammarCheckingResultWith(range: NSRange, details: [String]) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date) -> TextCheckingResult
  class func dateCheckingResultWith(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> TextCheckingResult
  class func addressCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
  class func linkCheckingResultWith(range: NSRange, url: URL) -> TextCheckingResult
  class func quoteCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func dashCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func replacementCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  class func correctionCheckingResultWith(range: NSRange, replacementString: String) -> TextCheckingResult
  @available(OSX 10.9, *)
  class func correctionCheckingResultWith(range: NSRange, replacementString: String, alternativeStrings: [String]) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func regularExpressionCheckingResultWith(ranges ranges: RangePointer, count: Int, regularExpression: RegularExpression) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func phoneNumber(range: NSRange, phoneNumber: String) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func transitInformationCheckingResultWith(range: NSRange, components: [String : String]) -> TextCheckingResult
}
