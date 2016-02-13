
@available(iOS 3.0, *)
enum MPMediaGrouping : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case title
  case album
  case artist
  case albumArtist
  case composer
  case genre
  case playlist
  case podcastTitle
}
@available(iOS 3.0, *)
class MPMediaQuery : Object, SecureCoding, Copying {
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
  class func albums() -> MPMediaQuery
  class func artists() -> MPMediaQuery
  class func songs() -> MPMediaQuery
  class func playlists() -> MPMediaQuery
  class func podcasts() -> MPMediaQuery
  class func audiobooks() -> MPMediaQuery
  class func compilations() -> MPMediaQuery
  class func composers() -> MPMediaQuery
  class func genres() -> MPMediaQuery
  convenience init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 3.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 3.0, *)
class MPMediaPredicate : Object, SecureCoding {
  init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 3.0, *)
enum MPMediaPredicateComparison : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case equalTo
  case contains
}
@available(iOS 3.0, *)
class MPMediaPropertyPredicate : MPMediaPredicate {
  /*not inherited*/ init(value: AnyObject?, forProperty property: String)
  /*not inherited*/ init(value: AnyObject?, forProperty property: String, comparisonType: MPMediaPredicateComparison)
  var property: String { get }
  @NSCopying var value: AnyObject? { get }
  var comparisonType: MPMediaPredicateComparison { get }
  init()
  init?(coder aDecoder: Coder)
}
extension MPMediaItem {
  @available(iOS 4.2, *)
  class func persistentIDProperty(forGroupingType groupingType: MPMediaGrouping) -> String
  @available(iOS 4.2, *)
  class func titleProperty(forGroupingType groupingType: MPMediaGrouping) -> String
}
