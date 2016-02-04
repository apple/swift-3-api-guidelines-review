
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
@available(OSX 10.8, *)
class GKMatch : NSObject {
  @available(OSX 10.10, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(OSX 10.10, *)
  func sendData(data: NSData, toPlayers players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataToAllPlayers(data: NSData, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWithName(name: String) -> GKVoiceChat?
  @available(OSX 10.10, *)
  func chooseBestHostingPlayerWithCompletionHandler(completionHandler: (GKPlayer?) -> Void)
  @available(OSX 10.9, *)
  func rematchWithCompletionHandler(completionHandler: ((GKMatch?, NSError?) -> Void)?)
  init()
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, fromRemotePlayer player: GKPlayer)
  @available(OSX 10.11, *)
  optional func match(match: GKMatch, didReceiveData data: NSData, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use match:didReceiveData:fromRemotePlayer:")
  optional func match(match: GKMatch, didReceiveData data: NSData, fromPlayer playerID: String)
  @available(OSX 10.8, *)
  optional func match(match: GKMatch, player: GKPlayer, didChangeConnectionState state: GKPlayerConnectionState)
  @available(OSX 10.8, *)
  optional func match(match: GKMatch, didFailWithError error: NSError?)
  @available(OSX 10.10, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(OSX, introduced=10.8, deprecated=10.10, message="use shouldReinviteDisconnectedPlayer:")
  optional func match(match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(OSX, introduced=10.9, deprecated=10.10, message="use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayerWithCompletionHandler(completionHandler: (String?) -> Void)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use sendData:toPlayers:dataMode:error:")
  func sendData(data: NSData, toPlayers playerIDs: [String], withDataMode mode: GKMatchSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10, message="use players")
  var playerIDs: [String] { get }
}
