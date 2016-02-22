
enum GKMatchSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case reliable
  case unreliable
}
enum GKPlayerConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stateUnknown
  case stateConnected
  case stateDisconnected
}
@available(iOS 4.1, *)
class GKMatch : NSObject {
  @available(iOS 8.0, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(iOS 8.0, *)
  func send(data: NSData, to players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendData(toAllPlayers data: NSData, with mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChat(withName name: String) -> GKVoiceChat?
  @available(iOS 8.0, *)
  func chooseBestHostingPlayer(completionHandler completionHandler: (GKPlayer?) -> Void)
  @available(iOS 6.0, *)
  func rematch(completionHandler completionHandler: ((GKMatch?, NSError?) -> Void)? = nil)
  init()
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func match(match: GKMatch, didReceive data: NSData, fromRemotePlayer player: GKPlayer)
  @available(iOS 9.0, *)
  optional func match(match: GKMatch, didReceive data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:didReceiveData:fromRemotePlayer:")
  optional func match(match: GKMatch, didReceive data: NSData, fromPlayer playerID: String)
  @available(iOS 4.1, *)
  optional func match(match: GKMatch, player: GKPlayer, didChange state: GKPlayerConnectionState)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use match:player:didChangeConnectionState:")
  optional func match(match: GKMatch, player playerID: String, didChange state: GKPlayerConnectionState)
  @available(iOS 4.1, *)
  optional func match(match: GKMatch, didFailWithError error: NSError?)
  @available(iOS 8.0, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(iOS, introduced=5.0, deprecated=8.0, message="use shouldReinviteDisconnectedPlayer:")
  optional func match(match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(iOS, introduced=6.0, deprecated=8.0, message="use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayer(completionHandler completionHandler: (String?) -> Void)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sendData:toPlayers:dataMode:error:")
  func send(data: NSData, toPlayers playerIDs: [String], with mode: GKMatchSendDataMode) throws
  @available(iOS, introduced=4.1, deprecated=8.0, message="use players")
  var playerIDs: [String] { get }
}
