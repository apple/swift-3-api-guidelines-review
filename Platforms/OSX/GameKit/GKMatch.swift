
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
@available(OSX 10.8, *)
class GKMatch : Object {
  @available(OSX 10.10, *)
  var players: [GKPlayer] { get }
  unowned(unsafe) var delegate: @sil_unmanaged GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(OSX 10.10, *)
  func send(data: Data, to players: [GKPlayer], dataMode mode: GKMatchSendDataMode) throws
  func sendDataTo(allPlayers data: Data, withDataMode mode: GKMatchSendDataMode) throws
  func disconnect()
  func voiceChatWith(name name: String) -> GKVoiceChat?
  @available(OSX 10.10, *)
  func chooseBestHostingPlayer(completionHandler completionHandler: (GKPlayer?) -> Void)
  @available(OSX 10.9, *)
  func rematch(completionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  init()
}
protocol GKMatchDelegate : ObjectProtocol {
  @available(OSX 10.10, *)
  optional func match(match: GKMatch, didReceive data: Data, fromRemotePlayer player: GKPlayer)
  @available(OSX 10.11, *)
  optional func match(match: GKMatch, didReceive data: Data, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use match:didReceiveData:fromRemotePlayer:")
  optional func match(match: GKMatch, didReceive data: Data, fromPlayer playerID: String)
  @available(OSX 10.8, *)
  optional func match(match: GKMatch, player: GKPlayer, didChange state: GKPlayerConnectionState)
  @available(OSX 10.8, *)
  optional func match(match: GKMatch, didFailWithError error: Error?)
  @available(OSX 10.10, *)
  optional func match(match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(OSX, introduced=10.8, deprecated=10.10, message="use shouldReinviteDisconnectedPlayer:")
  optional func match(match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(OSX, introduced=10.9, deprecated=10.10, message="use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayer(completionHandler completionHandler: (String?) -> Void)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use sendData:toPlayers:dataMode:error:")
  func send(data: Data, toPlayers playerIDs: [String], withDataMode mode: GKMatchSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10, message="use players")
  var playerIDs: [String] { get }
}
