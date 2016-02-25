
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
@available(iOS 4.1, *)
class GKMatch : NSObject {
  @available(iOS 8.0, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(iOS 8.0, *)
  func sendData(_ data: NSData, toPlayers players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(_ data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(_ name: String) -> GKVoiceChat?
  @available(iOS 8.0, *)
  func chooseBestHostingPlayerWithCompletionHandler(_ completionHandler: (GKPlayer?) -> Void)
  @available(iOS 6.0, *)
  func rematchWithCompletionHandler(_ completionHandler: ((GKMatch?, NSError?) -> Void)?)
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func match(_ match: GKMatch, didReceiveData data: NSData, fromRemotePlayer player: GKPlayer)
  @available(iOS 9.0, *)
  optional func match(_ match: GKMatch, didReceiveData data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:didReceiveData:fromRemotePlayer:")
  optional func match(_ match: GKMatch, didReceiveData data: NSData, fromPlayer playerID: String)
  @available(iOS 4.1, *)
  optional func match(_ match: GKMatch, player player: GKPlayer, didChangeConnectionState state: GKPlayerConnectionState)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:player:didChangeConnectionState:")
  optional func match(_ match: GKMatch, player playerID: String, didChangeState state: GKPlayerConnectionState)
  @available(iOS 4.1, *)
  optional func match(_ match: GKMatch, didFailWithError error: NSError?)
  @available(iOS 8.0, *)
  optional func match(_ match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(iOS, introduced=5.0, deprecated=8.0, message="use shouldReinviteDisconnectedPlayer:")
  optional func match(_ match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(iOS, introduced=6.0, deprecated=8.0, message="use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayerWithCompletionHandler(_ completionHandler: (String?) -> Void)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sendData:toPlayers:dataMode:error:")
  func sendData(_ data: NSData, toPlayers playerIDs: [String], withDataMode mode: GKMatchSendDataMode) throws
  @available(iOS, introduced=4.1, deprecated=8.0, message="use players")
  var playerIDs: [String] { get }
}
