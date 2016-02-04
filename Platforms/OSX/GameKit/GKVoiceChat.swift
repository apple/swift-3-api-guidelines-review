
enum GKVoiceChatPlayerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Connected
  case Disconnected
  case Speaking
  case Silent
  case Connecting
}
@available(OSX 10.8, *)
class GKVoiceChat : Object {
  func start()
  func stop()
  @available(OSX 10.10, *)
  func setPlayer(player: GKPlayer, muted isMuted: Bool)
  @available(OSX 10.10, *)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChatPlayerState) -> Void
  var name: String { get }
  var isActive: Bool
  var volume: Float
  @available(OSX 10.10, *)
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
  init()
}
extension GKVoiceChat {
  @available(OSX, introduced=10.8, deprecated=10.10, message="use players")
  var playerIDs: [String] { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="use setPlayerVoiceChatStateDidChangeHandler:")
  var playerStateUpdateHandler: (String, GKVoiceChatPlayerState) -> Void
  @available(OSX, introduced=10.8, deprecated=10.10, message="use setPlayer:muted:")
  func setMute(isMuted: Bool, forPlayer playerID: String)
}
