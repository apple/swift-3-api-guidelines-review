
@available(iOS 7.1, *)
class MPContentItem : Object {
  var identifier: String { get }
  var title: String?
  var subtitle: String?
  var artwork: MPMediaItemArtwork?
  var isContainer: Bool
  var isPlayable: Bool
  var playbackProgress: Float
  init(identifier: String)
  convenience init()
}
