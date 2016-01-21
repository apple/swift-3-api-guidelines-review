
var CoreSpotlightAPIVersion: Int32 { get }

//! Project version number for CoreSpotlight.
var CoreSpotlightVersionNumber: Double
@available(iOS 9.0, *)
class CSIndexExtensionRequestHandler : Object, ExtensionRequestHandling, CSSearchableIndexDelegate {
  init()
  @available(iOS 9.0, *)
  func beginRequestWith(context: ExtensionContext)
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
class CSPerson : Object, SecureCoding, Copying {
  init(displayName: String?, handles: [String], handleIdentifier: String)
  var displayName: String? { get }
  var handles: [String] { get }
  var handleIdentifier: String { get }
  var contactIdentifier: String?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
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
class CSSearchableIndex : Object {
  weak var indexDelegate: @sil_weak CSSearchableIndexDelegate?
  class func isIndexingAvailable() -> Bool
  class func defaultSearchableIndex() -> Self
  init(name: String)
  init(name: String, protectionClass: String?)
  func indexSearchableItems(items: [CSSearchableItem], completionHandler: ((Error?) -> Void)? = nil)
  func deleteSearchableItemsWithIdentifiers(identifiers: [String], completionHandler: ((Error?) -> Void)? = nil)
  func deleteSearchableItemsWithDomainIdentifiers(domainIdentifiers: [String], completionHandler: ((Error?) -> Void)? = nil)
  func deleteAllSearchableItems(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  init()
}
extension CSSearchableIndex {
  func beginBatch()
  func endBatchWithClientState(clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientStateWithCompletionHandler(completionHandler: (Data?, Error?) -> Void)
}
@available(iOS 9.0, *)
protocol CSSearchableIndexDelegate : ObjectProtocol {
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
class CSSearchableItem : Object, SecureCoding, Copying {
  init(uniqueIdentifier: String?, domainIdentifier: String?, attributeSet: CSSearchableItemAttributeSet)
  var uniqueIdentifier: String
  var domainIdentifier: String?
  @NSCopying var expirationDate: Date!
  var attributeSet: CSSearchableItemAttributeSet
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class CSSearchableItemAttributeSet : Object, Copying, SecureCoding {
  init(itemContentType: String)
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CSLocalizedString : NSString {
  init(localizedStrings: [Object : AnyObject])
  func localizedString() -> String
  init()
  init?(coder aDecoder: Coder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(utf8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: Data, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(cString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOf url: URL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOf url: URL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
@available(iOS 9.0, *)
class CSCustomAttributeKey : Object, Copying, SecureCoding {
  convenience init?(keyName: String)
  init?(keyName: String, searchable: Bool, searchableByDefault: Bool, unique: Bool, multiValued: Bool)
  var keyName: String { get }
  var isSearchable: Bool { get }
  var isSearchableByDefault: Bool { get }
  var isUnique: Bool { get }
  var isMultiValued: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension CSSearchableItemAttributeSet {
  func setValue(value: SecureCoding?, forCustomKey key: CSCustomAttributeKey)
  func valueForCustomKey(key: CSCustomAttributeKey) -> SecureCoding?
}
extension UserActivity {
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
  var fileSize: Number?
  var pageCount: Number?
  var pageWidth: Number?
  var pageHeight: Number?
  var securityMethod: String?
  var creator: String?
  var encodingApplications: [String]?
  var kind: String?
  var fontNames: [String]?
}
extension CSSearchableItemAttributeSet {
  var dueDate: Date?
  var completionDate: Date?
  var startDate: Date?
  var endDate: Date?
  var importantDates: [Date]?
  @NSCopying var allDay: Number?
}
extension CSSearchableItemAttributeSet {
  var displayName: String?
  var alternateNames: [String]?
  var path: String?
  var contentURL: URL?
  var thumbnailURL: URL?
  @NSCopying var thumbnailData: Data?
  var relatedUniqueIdentifier: String?
  var metadataModificationDate: Date?
  var contentType: String?
  var contentTypeTree: [String]?
  var keywords: [String]?
  var title: String?
}
extension CSSearchableItemAttributeSet {
  @NSCopying var supportsPhoneCall: Number?
  @NSCopying var supportsNavigation: Number?
}
extension CSSearchableItemAttributeSet {
  var containerTitle: String?
  var containerDisplayName: String?
  var containerIdentifier: String?
  @NSCopying var containerOrder: Number?
}
extension CSSearchableItemAttributeSet {
  var pixelHeight: Number?
  var pixelWidth: Number?
  var pixelCount: Number?
  var colorSpace: String?
  var bitsPerSample: Number?
  var flashOn: Number?
  var focalLength: Number?
  var focalLength35mm: Number?
  var acquisitionMake: String?
  var acquisitionModel: String?
  var cameraOwner: String?
  var lensModel: String?
  var isoSpeed: Number?
  var orientation: Number?
  var layerNames: [String]?
  var whiteBalance: Number?
  var aperture: Number?
  var profileName: String?
  var resolutionWidthDPI: Number?
  var resolutionHeightDPI: Number?
  var exposureMode: Number?
  var exposureTime: Number?
  var exifVersion: String?
  var exifgpsVersion: String?
  var hasAlphaChannel: Number?
  var redEyeOn: Number?
  var meteringMode: String?
  var maxAperture: Number?
  var fNumber: Number?
  var exposureProgram: String?
  var exposureTimeString: String?
}
extension CSSearchableItemAttributeSet {
  var editors: [String]?
  var participants: [String]?
  var projects: [String]?
  var downloadedDate: Date?
  var contentSources: [String]?
  var comment: String?
  var copyright: String?
  var lastUsedDate: Date?
  var contentCreationDate: Date?
  var contentModificationDate: Date?
  var addedDate: Date?
  var duration: Number?
  var contactKeywords: [String]?
  var version: String?
  var codecs: [String]?
  var mediaTypes: [String]?
  var streamable: Number?
  var totalBitRate: Number?
  var videoBitRate: Number?
  var audioBitRate: Number?
  var deliveryType: Number?
  var organizations: [String]?
  var role: String?
  var languages: [String]?
  var rights: String?
  var publishers: [String]?
  var contributors: [String]?
  var coverage: [String]?
  var rating: Number?
  var ratingDescription: String?
  var playCount: Number?
  var information: String?
  var director: String?
  var producer: String?
  var genre: String?
  var performers: [String]?
  var originalFormat: String?
  var originalSource: String?
  var local: Number?
  var contentRating: Number?
  var url: URL?
}
extension CSSearchableItemAttributeSet {
  var audioSampleRate: Number?
  var audioChannelCount: Number?
  var tempo: Number?
  var keySignature: String?
  var timeSignature: String?
  var audioEncodingApplication: String?
  var composer: String?
  var lyricist: String?
  var album: String?
  var artist: String?
  var audioTrackNumber: Number?
  var recordingDate: Date?
  var musicalGenre: String?
  var generalMIDISequence: Number?
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
  @NSCopying var htmlContentData: Data?
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
  var likelyJunk: Number
}
extension CSSearchableItemAttributeSet {
  var headline: String?
  var instructions: String?
  var city: String?
  var stateOrProvince: String?
  var country: String?
  var altitude: Number?
  var latitude: Number?
  var longitude: Number?
  var speed: Number?
  var timestamp: Date?
  var imageDirection: Number?
  var namedLocation: String?
  var gpsTrack: Number?
  var gpsStatus: String?
  var gpsMeasureMode: String?
  var gpsdop: Number?
  var gpsMapDatum: String?
  var gpsDestLatitude: Number?
  var gpsDestLongitude: Number?
  var gpsDestBearing: Number?
  var gpsDestDistance: Number?
  var gpsProcessingMethod: String?
  var gpsAreaInformation: String?
  var gpsDateStamp: Date?
  var gpsDifferental: Number?
}
