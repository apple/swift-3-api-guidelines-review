
@available(watchOS 2.0, *)
let WKAudioFilePlayerItemTimeJumpedNotification: String
@available(watchOS 2.0, *)
let WKAudioFilePlayerItemDidPlayToEndTimeNotification: String
@available(watchOS 2.0, *)
let WKAudioFilePlayerItemFailedToPlayToEndTimeNotification: String
@available(watchOS 2.0, *)
enum WKAudioFilePlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(watchOS 2.0, *)
class WKAudioFilePlayerItem : NSObject {
  /*not inherited*/ init(asset: WKAudioFileAsset)
  var asset: WKAudioFileAsset { get }
  var status: WKAudioFilePlayerItemStatus { get }
  var error: NSError? { get }
  var currentTime: NSTimeInterval { get }
}