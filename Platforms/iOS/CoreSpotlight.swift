
var CoreSpotlightAPIVersion: Int32 { get }

//! Project version number for CoreSpotlight.
var CoreSpotlightVersionNumber: Double
@available(iOS 9.0, *)
class CSIndexExtensionRequestHandler : NSObject, NSExtensionRequestHandling, CSSearchableIndexDelegate {
  init()
  @available(iOS 9.0, *)
  func beginRequestWith(context: NSExtensionContext)
  @available(iOS 9.0, *)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: () -> Void)
  @available(iOS 9.0, *)
  func searchableIndexDidThrottle(searchableIndex: CSSearchableIndex)
  @available(iOS 9.0, *)
  func searchableIndexDidFinishThrottle(searchableIndex: CSSearchableIndex)
}
@available(iOS 9.0, *)
class CSPerson : NSObject, NSSecureCoding, NSCopying {
  init(displayName: String?, handles: [String], handleIdentifier: String)
  var displayName: String? { get }
  var handles: [String] { get }
  var handleIdentifier: String { get }
  var contactIdentifier: String?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
let CSIndexErrorDomain: String
@available(iOS 9.0, *)
enum CSIndexErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case IndexUnavailableError
  case InvalidItemError
  case InvalidClientStateError
  case RemoteConnectionError
  case QuotaExceeded
  case IndexingUnsupported
}
@available(iOS 9.0, *)
class CSSearchableIndex : NSObject {
  weak var indexDelegate: @sil_weak CSSearchableIndexDelegate?
  class func isIndexingAvailable() -> Bool
  class func defaultSearchableIndex() -> Self
  init(name: String)
  init(name: String, protectionClass: String?)
  func indexSearchableItems(items: [CSSearchableItem], completionHandler: ((NSError?) -> Void)? = nil)
  func deleteSearchableItemsWithIdentifiers(identifiers: [String], completionHandler: ((NSError?) -> Void)? = nil)
  func deleteSearchableItemsWithDomainIdentifiers(domainIdentifiers: [String], completionHandler: ((NSError?) -> Void)? = nil)
  func deleteAllSearchableItems(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  init()
}
extension CSSearchableIndex {
  func beginIndexBatch()
  func endIndexBatchWithClientState(clientState: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  func fetchLastClientStateWithCompletionHandler(completionHandler: (NSData?, NSError?) -> Void)
}
@available(iOS 9.0, *)
protocol CSSearchableIndexDelegate : NSObjectProtocol {
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: () -> Void)
  func searchableIndex(searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: () -> Void)
  optional func searchableIndexDidThrottle(searchableIndex: CSSearchableIndex)
  optional func searchableIndexDidFinishThrottle(searchableIndex: CSSearchableIndex)
}
@available(iOS 9.0, *)
let CSSearchableItemActionType: String
@available(iOS 9.0, *)
let CSSearchableItemActivityIdentifier: String
@available(iOS 9.0, *)
class CSSearchableItem : NSObject, NSSecureCoding, NSCopying {
  init(uniqueIdentifier: String?, domainIdentifier: String?, attributeSet: CSSearchableItemAttributeSet)
  var uniqueIdentifier: String
  var domainIdentifier: String?
  @NSCopying var expirationDate: NSDate!
  var attributeSet: CSSearchableItemAttributeSet
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class CSSearchableItemAttributeSet : NSObject, NSCopying, NSSecureCoding {
  init(itemContentType: String)
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CSLocalizedString : NSString {
  init(localizedStrings: [NSObject : AnyObject])
  func localizedString() -> String
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
@available(iOS 9.0, *)
class CSCustomAttributeKey : NSObject, NSCopying, NSSecureCoding {
  convenience init?(keyName: String)
  init?(keyName: String, searchable: Bool, searchableByDefault: Bool, unique: Bool, multiValued: Bool)
  var keyName: String { get }
  var isSearchable: Bool { get }
  var isSearchableByDefault: Bool { get }
  var isUnique: Bool { get }
  var isMultiValued: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension CSSearchableItemAttributeSet {
  func setValue(value: NSSecureCoding?, forCustomKey key: CSCustomAttributeKey)
  func valueForCustomKey(key: CSCustomAttributeKey) -> NSSecureCoding?
}
extension NSUserActivity {
  @available(iOS 9.0, *)
  @NSCopying var contentAttributeSet: CSSearchableItemAttributeSet?
}
extension CSSearchableItemAttributeSet {

  ///Subject of the this item.
  var subject: String?
  var theme: String?
  var contentDescription: String?
  var identifier: String?
  var audiences: [String]?
  var fileSize: NSNumber?
  var pageCount: NSNumber?
  var pageWidth: NSNumber?
  var pageHeight: NSNumber?
  var securityMethod: String?
  var creator: String?
  var encodingApplications: [String]?
  var kind: String?
  var fontNames: [String]?
}
extension CSSearchableItemAttributeSet {
  var dueDate: NSDate?
  var completionDate: NSDate?
  var startDate: NSDate?
  var endDate: NSDate?
  var importantDates: [NSDate]?
  @NSCopying var allDay: NSNumber?
}
extension CSSearchableItemAttributeSet {
  var displayName: String?
  var alternateNames: [String]?
  var path: String?
  var contentURL: NSURL?
  var thumbnailURL: NSURL?
  @NSCopying var thumbnailData: NSData?
  var relatedUniqueIdentifier: String?
  var metadataModificationDate: NSDate?
  var contentType: String?
  var contentTypeTree: [String]?
  var keywords: [String]?
  var title: String?
}
extension CSSearchableItemAttributeSet {
  @NSCopying var supportsPhoneCall: NSNumber?
  @NSCopying var supportsNavigation: NSNumber?
}
extension CSSearchableItemAttributeSet {
  var containerTitle: String?
  var containerDisplayName: String?
  var containerIdentifier: String?
  @NSCopying var containerOrder: NSNumber?
}
extension CSSearchableItemAttributeSet {
  var pixelHeight: NSNumber?
  var pixelWidth: NSNumber?
  var pixelCount: NSNumber?
  var colorSpace: String?
  var bitsPerSample: NSNumber?
  var flashOn: NSNumber?
  var focalLength: NSNumber?
  var focalLength35mm: NSNumber?
  var acquisitionMake: String?
  var acquisitionModel: String?
  var cameraOwner: String?
  var lensModel: String?
  var isoSpeed: NSNumber?
  var orientation: NSNumber?
  var layerNames: [String]?
  var whiteBalance: NSNumber?
  var aperture: NSNumber?
  var profileName: String?
  var resolutionWidthDPI: NSNumber?
  var resolutionHeightDPI: NSNumber?
  var exposureMode: NSNumber?
  var exposureTime: NSNumber?
  var exifVersion: String?
  var exifgpsVersion: String?
  var hasAlphaChannel: NSNumber?
  var redEyeOn: NSNumber?
  var meteringMode: String?
  var maxAperture: NSNumber?
  var fNumber: NSNumber?
  var exposureProgram: String?
  var exposureTimeString: String?
}
extension CSSearchableItemAttributeSet {
  var editors: [String]?
  var participants: [String]?
  var projects: [String]?
  var downloadedDate: NSDate?
  var contentSources: [String]?
  var comment: String?
  var copyright: String?
  var lastUsedDate: NSDate?
  var contentCreationDate: NSDate?
  var contentModificationDate: NSDate?
  var addedDate: NSDate?
  var duration: NSNumber?
  var contactKeywords: [String]?
  var version: String?
  var codecs: [String]?
  var mediaTypes: [String]?
  var streamable: NSNumber?
  var totalBitRate: NSNumber?
  var videoBitRate: NSNumber?
  var audioBitRate: NSNumber?
  var deliveryType: NSNumber?
  var organizations: [String]?
  var role: String?
  var languages: [String]?
  var rights: String?
  var publishers: [String]?
  var contributors: [String]?
  var coverage: [String]?
  var rating: NSNumber?
  var ratingDescription: String?
  var playCount: NSNumber?
  var information: String?
  var director: String?
  var producer: String?
  var genre: String?
  var performers: [String]?
  var originalFormat: String?
  var originalSource: String?
  var local: NSNumber?
  var contentRating: NSNumber?
  var url: NSURL?
}
extension CSSearchableItemAttributeSet {
  var audioSampleRate: NSNumber?
  var audioChannelCount: NSNumber?
  var tempo: NSNumber?
  var keySignature: String?
  var timeSignature: String?
  var audioEncodingApplication: String?
  var composer: String?
  var lyricist: String?
  var album: String?
  var artist: String?
  var audioTrackNumber: NSNumber?
  var recordingDate: NSDate?
  var musicalGenre: String?
  var generalMIDISequence: NSNumber?
  var musicalInstrumentCategory: String?
  var musicalInstrumentName: String?
}
@available(iOS 9.0, *)
let CSMailboxInbox: String
@available(iOS 9.0, *)
let CSMailboxDrafts: String
@available(iOS 9.0, *)
let CSMailboxSent: String
@available(iOS 9.0, *)
let CSMailboxJunk: String
@available(iOS 9.0, *)
let CSMailboxTrash: String
@available(iOS 9.0, *)
let CSMailboxArchive: String
extension CSSearchableItemAttributeSet {
  var accountIdentifier: String?
  var accountHandles: [String]?
  @NSCopying var htmlContentData: NSData?
  var textContent: String?
  var authors: [CSPerson]?
  var primaryRecipients: [CSPerson]?
  var additionalRecipients: [CSPerson]?
  var hiddenAdditionalRecipients: [CSPerson]?
  var emailHeaders: [String : [AnyObject]]?
  var mailboxIdentifiers: [String]?
  var authorNames: [String]?
  var recipientNames: [String]?
  var authorEmailAddresses: [String]?
  var recipientEmailAddresses: [String]?
  var authorAddresses: [String]?
  var recipientAddresses: [String]?
  var phoneNumbers: [String]?
  var emailAddresses: [String]?
  var instantMessageAddresses: [String]?
  var likelyJunk: NSNumber
}
extension CSSearchableItemAttributeSet {
  var headline: String?
  var instructions: String?
  var city: String?
  var stateOrProvince: String?
  var country: String?
  var altitude: NSNumber?
  var latitude: NSNumber?
  var longitude: NSNumber?
  var speed: NSNumber?
  var timestamp: NSDate?
  var imageDirection: NSNumber?
  var namedLocation: String?
  var gpsTrack: NSNumber?
  var gpsStatus: String?
  var gpsMeasureMode: String?
  var gpsdop: NSNumber?
  var gpsMapDatum: String?
  var gpsDestLatitude: NSNumber?
  var gpsDestLongitude: NSNumber?
  var gpsDestBearing: NSNumber?
  var gpsDestDistance: NSNumber?
  var gpsProcessingMethod: String?
  var gpsAreaInformation: String?
  var gpsDateStamp: NSDate?
  var gpsDifferental: NSNumber?
}
