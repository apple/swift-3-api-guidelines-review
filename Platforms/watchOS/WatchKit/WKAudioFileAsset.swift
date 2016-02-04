
@available(watchOS 2.0, *)
class WKAudioFileAsset : Object {
  convenience init(url URL: URL)
  convenience init(url URL: URL, title: String?, albumTitle: String?, artist: String?)
  var url: URL { get }
  var duration: TimeInterval { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var artist: String? { get }
}
