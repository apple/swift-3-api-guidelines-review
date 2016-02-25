
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
  class func maxPlayersAllowedForMatchOfType(_ matchType: GKMatchType) -> Int
}
enum GKMatchType : UInt {
  init?(rawValue rawValue: UInt)
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
}
protocol GKInviteEventListener {
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, didAcceptInvite invite: GKInvite)
  @available(iOS 8.0, *)
  optional func player(_ player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
  @available(iOS, introduced=7.0, deprecated=8.0, message="use player:didRequestMatchWithRecipients:")
  optional func player(_ player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 4.1, *)
class GKMatchmaker : NSObject {
  class func sharedMatchmaker() -> GKMatchmaker
  @available(iOS 6.0, *)
  func matchForInvite(_ invite: GKInvite, completionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  func findMatchForRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func findPlayersForHostedRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  func addPlayersToMatch(_ match: GKMatch, matchRequest matchRequest: GKMatchRequest, completionHandler completionHandler: ((NSError?) -> Void)?)
  func cancel()
  @available(iOS 8.0, *)
  func cancelPendingInviteToPlayer(_ player: GKPlayer)
  @available(iOS 6.0, *)
  func finishMatchmakingForMatch(_ match: GKMatch)
  func queryPlayerGroupActivity(_ playerGroup: Int, withCompletionHandler completionHandler: ((Int, NSError?) -> Void)?)
  func queryActivityWithCompletionHandler(_ completionHandler: ((Int, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func startBrowsingForNearbyPlayersWithHandler(_ reachableHandler: ((GKPlayer, Bool) -> Void)?)
  @available(iOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
}
extension GKMatchmaker {
  @available(iOS, introduced=6.0, deprecated=8.0)
  func startBrowsingForNearbyPlayersWithReachableHandler(_ reachableHandler: ((String, Bool) -> Void)?)
  @available(iOS, introduced=6.0, deprecated=8.0, message="use cancelPendingInviteToPlayer:")
  func cancelInviteToPlayer(_ playerID: String)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use findPlayersForHostedRequest:")
  func findPlayersForHostedMatchRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, NSError?) -> Void)?)
}
