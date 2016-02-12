
enum GKInviteRecipientResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inviteRecipientResponseAccepted
  case inviteRecipientResponseDeclined
  case inviteRecipientResponseFailed
  case inviteRecipientResponseIncompatible
  case inviteRecipientResponseUnableToConnect
  case inviteRecipientResponseNoAnswer
  static var inviteeResponseAccepted: GKInviteRecipientResponse { get }
  static var inviteeResponseDeclined: GKInviteRecipientResponse { get }
  static var inviteeResponseFailed: GKInviteRecipientResponse { get }
  static var inviteeResponseIncompatible: GKInviteRecipientResponse { get }
  static var inviteeResponseUnableToConnect: GKInviteRecipientResponse { get }
  static var inviteeResponseNoAnswer: GKInviteRecipientResponse { get }
}
typealias GKInviteeResponse = GKInviteRecipientResponse
@available(iOS 4.1, *)
class GKMatchRequest : Object {
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
  class func maxPlayersAllowedForMatch(of matchType: GKMatchType) -> Int
  init()
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case peerToPeer
  case hosted
  case turnBased
}
@available(iOS 4.1, *)
class GKInvite : Object {
  @available(iOS 8.0, *)
  var sender: GKPlayer { get }
  @available(iOS, introduced=4.1, deprecated=8.0, message="use sender")
  var inviter: String { get }
  var isHosted: Bool { get }
  @available(iOS 6.0, *)
  var playerGroup: Int { get }
  @available(iOS 6.0, *)
  var playerAttributes: UInt32 { get }
  init()
}
protocol GKInviteEventListener {
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didAccept invite: GKInvite)
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
  @available(iOS, introduced=7.0, deprecated=8.0, message="use player:didRequestMatchWithRecipients:")
  optional func player(player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 4.1, *)
class GKMatchmaker : Object {
  class func shared() -> GKMatchmaker
  @available(iOS 6.0, *)
  func match(for invite: GKInvite, completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  func findMatch(for request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func findPlayers(forHostedRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func addPlayers(to match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((Error?) -> Void)? = nil)
  func cancel()
  @available(iOS 8.0, *)
  func cancelPendingInvite(to player: GKPlayer)
  @available(iOS 6.0, *)
  func finishMatchmaking(for match: GKMatch)
  func queryPlayerGroupActivity(playerGroup: Int, withCompletionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryActivity(completionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func startBrowsingForNearbyPlayers(handler reachableHandler: ((GKPlayer, Bool) -> Void)? = nil)
  @available(iOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
  init()
}
extension GKMatchmaker {
  @available(iOS, introduced=6.0, deprecated=8.0)
  func startBrowsingForNearbyPlayers(reachableHandler reachableHandler: ((String, Bool) -> Void)? = nil)
  @available(iOS, introduced=6.0, deprecated=8.0, message="use cancelPendingInviteToPlayer:")
  func cancelInvite(toPlayer playerID: String)
  @available(iOS, introduced=4.1, deprecated=8.0, message="use findPlayersForHostedRequest:")
  func findPlayers(forHostedMatchRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
}
