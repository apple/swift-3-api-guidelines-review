
var CoreSpotlightAPIVersion: Int32 { get }

//! Project version number for CoreSpotlight.
var CoreSpotlightVersionNumber: Double
extension CSSearchableIndex {
  func beginBatch()
  func endBatchWithClientState(clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientStateWithCompletionHandler(completionHandler: (Data?, Error?) -> Void)
}
extension CSSearchableItemAttributeSet {
  func setValue(value: SecureCoding?, forCustomKey key: CSCustomAttributeKey)
  func valueForCustomKey(key: CSCustomAttributeKey) -> SecureCoding?
}
extension UserActivity {
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
@available(tvOS 9.0, *)
let CSMailboxInbox: String
@available(tvOS 9.0, *)
let CSMailboxDrafts: String
@available(tvOS 9.0, *)
let CSMailboxSent: String
@available(tvOS 9.0, *)
let CSMailboxJunk: String
@available(tvOS 9.0, *)
let CSMailboxTrash: String
@available(tvOS 9.0, *)
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
