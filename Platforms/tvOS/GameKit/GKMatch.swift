
enum GKMatchSendDataMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Reliable
  case Unreliable
}
enum GKPlayerConnectionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case StateUnknown
  case StateConnected
  case StateDisconnected
}
@available(tvOS 4.1, *)
class GKMatch : NSObject {
  @available(tvOS 8.0, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(tvOS 8.0, *)
  func sendData(_ data: NSData, toPlayers players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(_ data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(_ name: String) -> GKVoiceChat?
  @available(tvOS 8.0, *)
  func chooseBestHostingPlayerWithCompletionHandler(_ completionHandler: (GKPlayer?) -> Void)
  @available(tvOS 6.0, *)
  func rematchWithCompletionHandler(_ completionHandler: ((GKMatch?, NSError?) -> Void)?)
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func match(_ match: GKMatch, didReceiveData data: NSData, fromRemotePlayer player: GKPlayer)
  @available(tvOS 9.0, *)
  optional func match(_ match: GKMatch, didReceiveData data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(tvOS 4.1, *)
  optional func match(_ match: GKMatch, player player: GKPlayer, didChangeConnectionState state: GKPlayerConnectionState)
  @available(tvOS 4.1, *)
  optional func match(_ match: GKMatch, didFailWithError error: NSError?)
  @available(tvOS 8.0, *)
  optional func match(_ match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
}
extension GKMatch {
}
