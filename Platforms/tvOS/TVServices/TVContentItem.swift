
@available(tvOS 9.0, *)
class TVContentItem : Object, Copying, SecureCoding {
  @NSCopying var contentIdentifier: TVContentIdentifier { get }
  @NSCopying var imageURL: URL?
  var imageShape: TVContentItemImageShape
  var title: String?
  @NSCopying var lastAccessedDate: Date?
  @NSCopying var expirationDate: Date?
  @NSCopying var creationDate: Date?
  @NSCopying var badgeCount: Number?
  @NSCopying var duration: Number?
  @NSCopying var currentPosition: Number?
  @NSCopying var hasPlayedToEnd: Number?
  @NSCopying var playURL: URL?
  @NSCopying var displayURL: URL?
  var topShelfItems: [TVContentItem]?
  init?(contentIdentifier ident: TVContentIdentifier)
  init?(coder: Coder)
  @available(tvOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(withCoder aCoder: Coder)
}
@available(tvOS 9.0, *)
enum TVContentItemImageShape : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case poster
  case square
  case SDTV
  case HDTV
  case wide
  case extraWide
}
