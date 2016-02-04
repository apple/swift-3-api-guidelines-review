
enum GKVoiceChatPlayerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Connected
  case Disconnected
  case Speaking
  case Silent
  case Connecting
}
@available(iOS 4.1, *)
class GKVoiceChat : NSObject {
  func start()
  func stop()
  @available(iOS 8.0, *)
  func setPlayer(player: GKPlayer, muted isMuted: Bool)
  @available(iOS 8.0, *)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChatPlayerState) -> Void
  var name: String { get }
  var active: Bool
  var volume: Float
  @available(iOS 8.0, *)
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
  init()
}
extension GKVoiceChat {
  @available(iOS, introduced=5.0, deprecated=8.0, message="use players")
  var playerIDs: [String] { get }
  @available(iOS, introduced=4.1, deprecated=8.0, message="use setPlayerVoiceChatStateDidChangeHandler:")
  var playerStateUpdateHandler: (String, GKVoiceChatPlayerState) -> Void
  @available(iOS, introduced=5.0, deprecated=8.0, message="use setPlayer:muted:")
  func setMute(isMuted: Bool, forPlayer playerID: String)
}
