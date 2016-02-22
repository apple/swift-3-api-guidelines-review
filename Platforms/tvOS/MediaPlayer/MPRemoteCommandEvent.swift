
@available(tvOS 7.1, *)
class MPRemoteCommandEvent : NSObject {
  var command: MPRemoteCommand { get }
  var timestamp: NSTimeInterval { get }
  init()
}
@available(tvOS 7.1, *)
class MPSkipIntervalCommandEvent : MPRemoteCommandEvent {
  var interval: NSTimeInterval { get }
  init()
}
@available(tvOS 7.1, *)
enum MPSeekCommandEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case beginSeeking
  case endSeeking
}
@available(tvOS 7.1, *)
class MPSeekCommandEvent : MPRemoteCommandEvent {
  var type: MPSeekCommandEventType { get }
  init()
}
@available(tvOS 7.1, *)
class MPRatingCommandEvent : MPRemoteCommandEvent {
  var rating: Float { get }
  init()
}
@available(tvOS 7.1, *)
class MPChangePlaybackRateCommandEvent : MPRemoteCommandEvent {
  var playbackRate: Float { get }
  init()
}
@available(tvOS 7.1, *)
class MPFeedbackCommandEvent : MPRemoteCommandEvent {
  var isNegative: Bool { get }
  init()
}
@available(tvOS 9.0, *)
class MPChangeLanguageOptionCommandEvent : MPRemoteCommandEvent {
  var languageOption: MPNowPlayingInfoLanguageOption { get }
  init()
}
@available(tvOS 8.0, *)
class MPChangePlaybackPositionCommandEvent : MPRemoteCommandEvent {
  var positionTime: NSTimeInterval { get }
  init()
}
