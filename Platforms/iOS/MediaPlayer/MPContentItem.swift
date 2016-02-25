
@available(iOS 7.1, *)
class MPContentItem : NSObject {
  var identifier: String { get }
  var title: String?
  var subtitle: String?
  var artwork: MPMediaItemArtwork?
  var container: Bool
  var playable: Bool
  var playbackProgress: Float
  init(identifier identifier: String)
}
