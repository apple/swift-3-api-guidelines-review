
@available(watchOS 2.0, *)
class WKAudioFileAsset : NSObject {
  convenience init(URL URL: NSURL)
  convenience init(URL URL: NSURL, title title: String?, albumTitle albumTitle: String?, artist artist: String?)
  var URL: NSURL { get }
  var duration: NSTimeInterval { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var artist: String? { get }
}
