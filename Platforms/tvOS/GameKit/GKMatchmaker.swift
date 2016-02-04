
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
@available(tvOS 4.1, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(tvOS 8.0, *)
  var recipients: [GKPlayer]?
  @available(tvOS 6.0, *)
  var inviteMessage: String?
  @available(tvOS 6.0, *)
  var defaultNumberOfPlayers: Int
  @available(tvOS 8.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(tvOS 6.0, *)
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
@available(tvOS 4.1, *)
class GKInvite : NSObject {
  @available(tvOS 8.0, *)
  var sender: GKPlayer { get }
  var hosted: Bool { get }
  @available(tvOS 6.0, *)
  var playerGroup: Int { get }
  @available(tvOS 6.0, *)
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, didAcceptInvite invite: GKInvite)
  @available(tvOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
}
@available(tvOS 4.1, *)
class GKMatchmaker : NSObject {
  class func sharedMatchmaker() -> GKMatchmaker
  @available(tvOS 6.0, *)
  func matchForInvite(invite: GKInvite, completionHandler: ((GKMatch?, NSError?) -> Void)?)
  func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  @available(tvOS 8.0, *)
  func findPlayersForHostedRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  func addPlayersToMatch(match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((NSError?) -> Void)?)
  func cancel()
  @available(tvOS 8.0, *)
  func cancelPendingInviteToPlayer(player: GKPlayer)
  @available(tvOS 6.0, *)
  func finishMatchmakingForMatch(match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, NSError?) -> Void)?)
  func queryActivityWithCompletionHandler(completionHandler: ((Int, NSError?) -> Void)?)
  @available(tvOS 8.0, *)
  func startBrowsingForNearbyPlayersWithHandler(reachableHandler: ((GKPlayer, Bool) -> Void)?)
  @available(tvOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
}
