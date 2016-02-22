
@available(watchOS 2.0, *)
class WKAudioFileAsset : NSObject {
  convenience init(url URL: NSURL)
  convenience init(url URL: NSURL, title: String?, albumTitle: String?, artist: String?)
  var url: NSURL { get }
  var duration: NSTimeInterval { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var artist: String? { get }
}
