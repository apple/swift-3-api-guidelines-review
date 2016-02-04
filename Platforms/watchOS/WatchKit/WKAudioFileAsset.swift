
@available(watchOS 2.0, *)
class WKAudioFileAsset : NSObject {
  convenience init(URL: NSURL)
  convenience init(URL: NSURL, title: String?, albumTitle: String?, artist: String?)
  var URL: NSURL { get }
  var duration: NSTimeInterval { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var artist: String? { get }
}
