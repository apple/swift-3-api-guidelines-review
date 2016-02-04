
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
