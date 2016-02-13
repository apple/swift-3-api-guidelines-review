
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
  @available(OSX 10.7, *)
  static var regularExpression: TextCheckingType { get }
  @available(OSX 10.7, *)
  static var phoneNumber: TextCheckingType { get }
  @available(OSX 10.7, *)
  static var transitInformation: TextCheckingType { get }
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
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encode(aCoder: Coder)
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
  func range(at idx: Int) -> NSRange
  @available(OSX 10.7, *)
  func adjustingRanges(offset offset: Int) -> TextCheckingResult
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
  class func orthographyCheckingResult(range: NSRange, orthography: Orthography) -> TextCheckingResult
  class func spell(range: NSRange) -> TextCheckingResult
  class func grammarCheckingResult(range: NSRange, details: [String]) -> TextCheckingResult
  class func dateCheckingResult(range: NSRange, date: Date) -> TextCheckingResult
  class func dateCheckingResult(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> TextCheckingResult
  class func addressCheckingResult(range: NSRange, components: [String : String]) -> TextCheckingResult
  class func linkCheckingResult(range: NSRange, url: URL) -> TextCheckingResult
  class func quoteCheckingResult(range: NSRange, replacementString: String) -> TextCheckingResult
  class func dashCheckingResult(range: NSRange, replacementString: String) -> TextCheckingResult
  class func replacementCheckingResult(range: NSRange, replacementString: String) -> TextCheckingResult
  class func correctionCheckingResult(range: NSRange, replacementString: String) -> TextCheckingResult
  @available(OSX 10.9, *)
  class func correctionCheckingResult(range: NSRange, replacementString: String, alternativeStrings: [String]) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func regularExpressionCheckingResult(ranges ranges: RangePointer, count: Int, regularExpression: RegularExpression) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func phoneNumber(range: NSRange, phoneNumber: String) -> TextCheckingResult
  @available(OSX 10.7, *)
  class func transitInformationCheckingResult(range: NSRange, components: [String : String]) -> TextCheckingResult
}
