
struct NSTextCheckingType : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var Orthography: NSTextCheckingType { get }
  static var Spelling: NSTextCheckingType { get }
  static var Grammar: NSTextCheckingType { get }
  static var Date: NSTextCheckingType { get }
  static var Address: NSTextCheckingType { get }
  static var Link: NSTextCheckingType { get }
  static var Quote: NSTextCheckingType { get }
  static var Dash: NSTextCheckingType { get }
  static var Replacement: NSTextCheckingType { get }
  static var Correction: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var RegularExpression: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var PhoneNumber: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var TransitInformation: NSTextCheckingType { get }
}
typealias NSTextCheckingTypes = UInt64
var NSTextCheckingAllSystemTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllCustomTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllTypes: NSTextCheckingTypes { get }
@available(OSX 10.6, *)
class NSTextCheckingResult : NSObject, NSCopying, NSCoding {
  var resultType: NSTextCheckingType { get }
  var range: NSRange { get }
  init()
  @available(OSX 10.6, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTextCheckingResult {
  @NSCopying var orthography: NSOrthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: NSDate? { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  var duration: NSTimeInterval { get }
  @available(OSX 10.7, *)
  var components: [String : String]? { get }
  @NSCopying var URL: NSURL? { get }
  var replacementString: String? { get }
  @available(OSX 10.9, *)
  var alternativeStrings: [String]? { get }
  @available(OSX 10.7, *)
  @NSCopying var regularExpression: NSRegularExpression? { get }
  @available(OSX 10.7, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(OSX 10.7, *)
  var numberOfRanges: Int { get }
  @available(OSX 10.7, *)
  func rangeAtIndex(idx: Int) -> NSRange
  @available(OSX 10.7, *)
  func resultByAdjustingRangesWithOffset(offset: Int) -> NSTextCheckingResult
}
@available(OSX 10.6, *)
let NSTextCheckingNameKey: String
@available(OSX 10.6, *)
let NSTextCheckingJobTitleKey: String
@available(OSX 10.6, *)
let NSTextCheckingOrganizationKey: String
@available(OSX 10.6, *)
let NSTextCheckingStreetKey: String
@available(OSX 10.6, *)
let NSTextCheckingCityKey: String
@available(OSX 10.6, *)
let NSTextCheckingStateKey: String
@available(OSX 10.6, *)
let NSTextCheckingZIPKey: String
@available(OSX 10.6, *)
let NSTextCheckingCountryKey: String
@available(OSX 10.6, *)
let NSTextCheckingPhoneKey: String
@available(OSX 10.7, *)
let NSTextCheckingAirlineKey: String
@available(OSX 10.7, *)
let NSTextCheckingFlightKey: String
extension NSTextCheckingResult {
  class func orthographyCheckingResultWithRange(range: NSRange, orthography: NSOrthography) -> NSTextCheckingResult
  class func spellCheckingResultWithRange(range: NSRange) -> NSTextCheckingResult
  class func grammarCheckingResultWithRange(range: NSRange, details: [String]) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(range: NSRange, date: NSDate) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(range: NSRange, date: NSDate, timeZone: NSTimeZone, duration: NSTimeInterval) -> NSTextCheckingResult
  class func addressCheckingResultWithRange(range: NSRange, components: [String : String]) -> NSTextCheckingResult
  class func linkCheckingResultWithRange(range: NSRange, URL url: NSURL) -> NSTextCheckingResult
  class func quoteCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func dashCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func replacementCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResultWithRange(range: NSRange, replacementString: String) -> NSTextCheckingResult
  @available(OSX 10.9, *)
  class func correctionCheckingResultWithRange(range: NSRange, replacementString: String, alternativeStrings: [String]) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func regularExpressionCheckingResultWithRanges(ranges: NSRangePointer, count: Int, regularExpression: NSRegularExpression) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func phoneNumberCheckingResultWithRange(range: NSRange, phoneNumber: String) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func transitInformationCheckingResultWithRange(range: NSRange, components: [String : String]) -> NSTextCheckingResult
}
