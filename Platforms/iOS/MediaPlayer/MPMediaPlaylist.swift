
@available(iOS 3.0, *)
struct MPMediaPlaylistAttribute : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MPMediaPlaylistAttribute { get }
  static var OnTheGo: MPMediaPlaylistAttribute { get }
  static var Smart: MPMediaPlaylistAttribute { get }
  static var Genius: MPMediaPlaylistAttribute { get }
}
@available(iOS 3.0, *)
class MPMediaPlaylist : MPMediaItemCollection {
  @available(iOS 7.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var name: String? { get }
  @available(iOS 7.0, *)
  var playlistAttributes: MPMediaPlaylistAttribute { get }
  @available(iOS 8.0, *)
  var seedItems: [MPMediaItem]? { get }
  init(items: [MPMediaItem])
  convenience init()
  init?(coder aDecoder: Coder)
}
let MPMediaPlaylistPropertyPersistentID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
