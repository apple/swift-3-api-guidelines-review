
enum GKInviteRecipientResponse : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case InviteRecipientResponseAccepted
  case InviteRecipientResponseDeclined
  case InviteRecipientResponseFailed
  case InviteRecipientResponseIncompatible
  case InviteRecipientResponseUnableToConnect
  case InviteRecipientResponseNoAnswer
  static var InviteeResponseAccepted: GKInviteRecipientResponse { get }
  static var InviteeResponseDeclined: GKInviteRecipientResponse { get }
  static var InviteeResponseFailed: GKInviteRecipientResponse { get }
  static var InviteeResponseIncompatible: GKInviteRecipientResponse { get }
  static var InviteeResponseUnableToConnect: GKInviteRecipientResponse { get }
  static var InviteeResponseNoAnswer: GKInviteRecipientResponse { get }
}
typealias GKInviteeResponse = GKInviteRecipientResponse
@available(OSX 10.8, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(OSX 10.10, *)
  var recipients: [GKPlayer]?
  @available(OSX, introduced=10.8, deprecated=10.10, message="use recipients")
  var playersToInvite: [String]?
  @available(OSX 10.8, *)
  var inviteMessage: String?
  @available(OSX 10.8, *)
  var defaultNumberOfPlayers: Int
  @available(OSX 10.10, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(OSX, introduced=10.9, deprecated=10.10, message="use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(OSX 10.9, *)
  class func maxPlayersAllowedForMatchOfType(_ matchType: GKMatchType) -> Int
}
enum GKMatchType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case PeerToPeer
  case Hosted
  case TurnBased
}
@available(OSX 10.8, *)
class GKInvite : NSObject {
  @available(OSX 10.10, *)
  var sender: GKPlayer { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="use sender")
  var inviter: String { get }
  var hosted: Bool { get }
  @available(OSX 10.9, *)
  var playerGroup: Int { get }
  @available(OSX 10.9, *)
  var playerAttributes: UInt32 { get }
}
protocol GKInviteEventListener {
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, didAcceptInvite invite: GKInvite)
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
}
@available(OSX 10.8, *)
class GKMatchmaker : NSObject {
  class func sharedMatchmaker() -> GKMatchmaker
  @available(OSX 10.9, *)
  func matchForInvite(_ invite: GKInvite, completionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  func findMatchForRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func findPlayersForHostedRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  func addPlayersToMatch(_ match: GKMatch, matchRequest matchRequest: GKMatchRequest, completionHandler completionHandler: ((NSError?) -> Void)?)
  func cancel()
  @available(OSX 10.10, *)
  func cancelPendingInviteToPlayer(_ player: GKPlayer)
  @available(OSX 10.9, *)
  func finishMatchmakingForMatch(_ match: GKMatch)
  func queryPlayerGroupActivity(_ playerGroup: Int, withCompletionHandler completionHandler: ((Int, NSError?) -> Void)?)
  func queryActivityWithCompletionHandler(_ completionHandler: ((Int, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func startBrowsingForNearbyPlayersWithHandler(_ reachableHandler: ((GKPlayer, Bool) -> Void)?)
  @available(OSX 10.9, *)
  func stopBrowsingForNearbyPlayers()
}
extension GKMatchmaker {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer to register an object that implements the GKInviteEventListenerProtocol instead")
  var inviteHandler: ((GKInvite, [AnyObject]?) -> Void)?
  @available(OSX, introduced=10.9, deprecated=10.10)
  func startBrowsingForNearbyPlayersWithReachableHandler(_ reachableHandler: ((String, Bool) -> Void)?)
  @available(OSX, introduced=10.9, deprecated=10.10, message="use cancelPendingInviteToPlayer:")
  func cancelInviteToPlayer(_ playerID: String)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use findPlayersForHostedRequest:")
  func findPlayersForHostedMatchRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
}
