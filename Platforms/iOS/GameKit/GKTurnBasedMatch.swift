
enum GKTurnBasedMatchStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Open
  case Ended
  case Matching
}
enum GKTurnBasedParticipantStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Invited
  case Declined
  case Matching
  case Active
  case Done
}
enum GKTurnBasedMatchOutcome : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Quit
  case Won
  case Lost
  case Tied
  case TimeExpired
  case First
  case Second
  case Third
  case Fourth
  case CustomRange
}
@available(iOS 5.0, *)
class GKTurnBasedParticipant : NSObject {
  @available(iOS 8.0, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: NSDate? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(iOS 6.0, *)
  @NSCopying var timeoutDate: NSDate? { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="use player")
  var playerID: String? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedTurnEventForMatch match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(iOS 5.0, *)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 9.0, *)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
  @available(iOS, introduced=7.0, deprecated=8.0, message="use didRequestMatchWithOtherPlayers")
  optional func player(player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 6.0, *)
var GKTurnTimeoutDefault: NSTimeInterval
@available(iOS 6.0, *)
var GKTurnTimeoutNone: NSTimeInterval
@available(iOS 5.0, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String? { get }
  var creationDate: NSDate? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: NSData? { get }
  @available(iOS 7.0, *)
  func setLocalizableMessageWithKey(key: String, arguments: [String]?)
  var message: String?
  @available(iOS 6.0, *)
  var matchDataMaximumSize: Int { get }
  @available(iOS 7.0, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var exchangeDataMaximumSize: Int { get }
  @available(iOS 7.0, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatchesWithCompletionHandler(completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  class func loadMatchWithID(matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  func acceptInviteWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  func declineInviteWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func removeWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func loadMatchDataWithCompletionHandler(completionHandler: ((NSData?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func endTurnWithNextParticipants(nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func participantQuitInTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  func participantQuitOutOfTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  func endMatchInTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func endMatchInTurnWithMatchData(matchData: NSData, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func saveCurrentTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func saveMergedMatchData(matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func sendExchangeToParticipants(participants: [GKTurnBasedParticipant], data: NSData, localizableMessageKey key: String, arguments: [String], timeout: NSTimeInterval, completionHandler: ((GKTurnBasedExchange, NSError) -> Void)?)
  @available(iOS 7.0, *)
  func sendReminderToParticipants(participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(iOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Unknown
  case Active
  case Complete
  case Resolved
  case Canceled
}
@available(iOS 7.0, *)
var GKExchangeTimeoutDefault: NSTimeInterval
@available(iOS 7.0, *)
var GKExchangeTimeoutNone: NSTimeInterval
@available(iOS 7.0, *)
class GKTurnBasedExchange : NSObject {
  var exchangeID: String? { get }
  var sender: GKTurnBasedParticipant? { get }
  var recipients: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedExchangeStatus { get }
  var message: String? { get }
  var data: NSData? { get }
  var sendDate: NSDate? { get }
  var timeoutDate: NSDate? { get }
  var completionDate: NSDate? { get }
  var replies: [GKTurnBasedExchangeReply]? { get }
  @available(iOS 7.0, *)
  func cancelWithLocalizableMessageKey(key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func replyWithLocalizableMessageKey(key: String, arguments: [String], data: NSData, completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(iOS 7.0, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(iOS 8.0, *)
  var replyDate: NSDate? { get }
  init()
}
