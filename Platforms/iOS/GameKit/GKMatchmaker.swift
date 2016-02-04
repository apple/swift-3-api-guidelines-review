
enum GKInviteRecipientResponse : Int {
  init?(rawValue: Int)
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
@available(iOS 4.1, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(iOS 8.0, *)
  var recipients: [GKPlayer]?
  @available(iOS, introduced=4.1, deprecated=8.0, message="use recipients")
  var playersToInvite: [String]?
  @available(iOS 6.0, *)
  var inviteMessage: String?
  @available(iOS 6.0, *)
  var defaultNumberOfPlayers: Int
  @available(iOS 8.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(iOS, introduced=6.0, deprecated=8.0, message="use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(iOS 6.0, *)
  class func maxPlayersAllowedForMatchOfType(matchType: GKMatchType) -> Int
  init()
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PeerToPeer
  case Hosted
  case TurnBased
}
@available(iOS 4.1, *)
class GKInvite : NSObject {
  @available(iOS 8.0, *)
  var sender: GKPlayer { get }
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sender")
  var inviter: String { get }
  var hosted: Bool { get }
  @available(iOS 6.0, *)
  var playerGroup: Int { get }
  @available(iOS 6.0, *)
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didAcceptInvite invite: GKInvite)
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
  @available(iOS, introduced=7.0, deprecated=8.0, message="use player:didRequestMatchWithRecipients:")
  optional func player(player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 4.1, *)
class GKMatchmaker : NSObject {
  class func sharedMatchmaker() -> GKMatchmaker
  @available(iOS 6.0, *)
  func matchForInvite(invite: GKInvite, completionHandler: ((GKMatch?, NSError?) -> Void)?)
  func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func findPlayersForHostedRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  func addPlayersToMatch(match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((NSError?) -> Void)?)
  func cancel()
  @available(iOS 8.0, *)
  func cancelPendingInviteToPlayer(player: GKPlayer)
  @available(iOS 6.0, *)
  func finishMatchmakingForMatch(match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, NSError?) -> Void)?)
  func queryActivityWithCompletionHandler(completionHandler: ((Int, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func startBrowsingForNearbyPlayersWithHandler(reachableHandler: ((GKPlayer, Bool) -> Void)?)
  @available(iOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
  @available(iOS, introduced=6.0, deprecated=8.0)
  func startBrowsingForNearbyPlayersWithReachableHandler(reachableHandler: ((String, Bool) -> Void)?)
  @available(iOS, introduced=6.0, deprecated=8.0, message="use cancelPendingInviteToPlayer:")
  func cancelInviteToPlayer(playerID: String)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use findPlayersForHostedRequest:")
  func findPlayersForHostedMatchRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
}
