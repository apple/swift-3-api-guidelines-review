
@available(iOS 3.0, *)
struct MPMediaPlaylistAttribute : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: MPMediaPlaylistAttribute { get }
  static var onTheGo: MPMediaPlaylistAttribute { get }
  static var smart: MPMediaPlaylistAttribute { get }
  static var genius: MPMediaPlaylistAttribute { get }
}
@available(iOS 3.0, *)
class MPMediaPlaylist : MPMediaItemCollection {
  @available(iOS 7.0, *)
  var name: String? { get }
  @available(iOS 7.0, *)
  var playlistAttributes: MPMediaPlaylistAttribute { get }
  @available(iOS 8.0, *)
  var seedItems: [MPMediaItem]? { get }
}
let MPMediaPlaylistPropertyPersistentID: String
let MPMediaPlaylistPropertyName: String
let MPMediaPlaylistPropertyPlaylistAttributes: String
let MPMediaPlaylistPropertySeedItems: String
