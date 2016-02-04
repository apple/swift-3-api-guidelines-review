
@available(iOS 3.0, *)
enum MPMediaGrouping : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Title
  case Album
  case Artist
  case AlbumArtist
  case Composer
  case Genre
  case Playlist
  case PodcastTitle
}
@available(iOS 3.0, *)
class MPMediaQuery : NSObject, NSSecureCoding, NSCopying {
  init(filterPredicates: Set<MPMediaPredicate>?)
  var filterPredicates: Set<MPMediaPredicate>?
  func addFilterPredicate(predicate: MPMediaPredicate)
  func removeFilterPredicate(predicate: MPMediaPredicate)
  var items: [MPMediaItem]? { get }
  var collections: [MPMediaItemCollection]? { get }
  var groupingType: MPMediaGrouping
  @available(iOS 4.2, *)
  var itemSections: [MPMediaQuerySection]? { get }
  @available(iOS 4.2, *)
  var collectionSections: [MPMediaQuerySection]? { get }
  class func albumsQuery() -> MPMediaQuery
  class func artistsQuery() -> MPMediaQuery
  class func songsQuery() -> MPMediaQuery
  class func playlistsQuery() -> MPMediaQuery
  class func podcastsQuery() -> MPMediaQuery
  class func audiobooksQuery() -> MPMediaQuery
  class func compilationsQuery() -> MPMediaQuery
  class func composersQuery() -> MPMediaQuery
  class func genresQuery() -> MPMediaQuery
  convenience init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 3.0, *)
class MPMediaPredicate : NSObject, NSSecureCoding {
  init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 3.0, *)
enum MPMediaPredicateComparison : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EqualTo
  case Contains
}
@available(iOS 3.0, *)
class MPMediaPropertyPredicate : MPMediaPredicate {
  /*not inherited*/ init(value: AnyObject?, forProperty property: String)
  /*not inherited*/ init(value: AnyObject?, forProperty property: String, comparisonType: MPMediaPredicateComparison)
  var property: String { get }
  @NSCopying var value: AnyObject? { get }
  var comparisonType: MPMediaPredicateComparison { get }
  init()
  init?(coder aDecoder: NSCoder)
}
extension MPMediaItem {
  @available(iOS 4.2, *)
  class func persistentIDPropertyForGroupingType(groupingType: MPMediaGrouping) -> String
  @available(iOS 4.2, *)
  class func titlePropertyForGroupingType(groupingType: MPMediaGrouping) -> String
}
