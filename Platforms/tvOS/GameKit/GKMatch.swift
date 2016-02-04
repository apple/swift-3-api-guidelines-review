
enum GKMatchSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Reliable
  case Unreliable
}
enum GKPlayerConnectionState : Int {
  init?(rawValue: Int)
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
  func sendData(data: NSData, toPlayers players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(name: String) -> GKVoiceChat?
  @available(tvOS 8.0, *)
  func chooseBestHostingPlayerWithCompletionHandler(completionHandler: (GKPlayer?) -> Void)
  @available(tvOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKMatch?, NSError?) -> Void)?)
  init()
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, fromRemotePlayer player: GKPlayer)
  @available(tvOS 9.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(tvOS 4.1, *)
  optional func match(match: GKMatch, player: GKPlayer, didChangeConnectionState state: GKPlayerConnectionState)
  @available(tvOS 4.1, *)
  optional func match(match: GKMatch, didFailWithError error: NSError?)
  @available(tvOS 8.0, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
}
extension GKMatch {
}
