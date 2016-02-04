
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
@available(iOS 4.1, *)
class GKMatch : NSObject {
  @available(iOS 8.0, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(iOS 8.0, *)
  func sendData(data: NSData, toPlayers players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(name: String) -> GKVoiceChat?
  @available(iOS 8.0, *)
  func chooseBestHostingPlayerWithCompletionHandler(completionHandler: (GKPlayer?) -> Void)
  @available(iOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKMatch?, NSError?) -> Void)?)
  init()
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, fromRemotePlayer player: GKPlayer)
  @available(iOS 9.0, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:didReceiveData:fromRemotePlayer:")
  optional func match(match: GKMatch, didReceiveData data: NSData, fromPlayer playerID: String)
  @available(iOS 4.1, *)
  optional func match(match: GKMatch, player: GKPlayer, didChangeConnectionState state: GKPlayerConnectionState)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:player:didChangeConnectionState:")
  optional func match(match: GKMatch, player playerID: String, didChangeState state: GKPlayerConnectionState)
  @available(iOS 4.1, *)
  optional func match(match: GKMatch, didFailWithError error: NSError?)
  @available(iOS 8.0, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(iOS, introduced=5.0, deprecated=8.0, message="use shouldReinviteDisconnectedPlayer:")
  optional func match(match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(iOS, introduced=6.0, deprecated=8.0, message="use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayerWithCompletionHandler(completionHandler: (String?) -> Void)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sendData:toPlayers:dataMode:error:")
  func sendData(data: NSData, toPlayers playerIDs: [String], withDataMode mode: GKMatchSendDataMode) throws
  @available(iOS, introduced=4.1, deprecated=8.0, message="use players")
  var playerIDs: [String] { get }
}
