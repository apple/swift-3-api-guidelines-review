
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
@available(tvOS 5.0, *)
class GKTurnBasedParticipant : NSObject {
  @available(tvOS 8.0, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: NSDate? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(tvOS 6.0, *)
  @NSCopying var timeoutDate: NSDate? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(tvOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedTurnEventForMatch match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(tvOS 5.0, *)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(tvOS 9.0, *)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
}
@available(tvOS 6.0, *)
var GKTurnTimeoutDefault: NSTimeInterval
@available(tvOS 6.0, *)
var GKTurnTimeoutNone: NSTimeInterval
@available(tvOS 5.0, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String? { get }
  var creationDate: NSDate? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: NSData? { get }
  @available(tvOS 7.0, *)
  func setLocalizableMessageWithKey(key: String, arguments: [String]?)
  var message: String?
  @available(tvOS 6.0, *)
  var matchDataMaximumSize: Int { get }
  @available(tvOS 7.0, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var exchangeDataMaximumSize: Int { get }
  @available(tvOS 7.0, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func findMatchForRequest(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatchesWithCompletionHandler(completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)?)
  @available(tvOS 5.0, *)
  class func loadMatchWithID(matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func rematchWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(tvOS 5.0, *)
  func acceptInviteWithCompletionHandler(completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(tvOS 5.0, *)
  func declineInviteWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func removeWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func loadMatchDataWithCompletionHandler(completionHandler: ((NSData?, NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func endTurnWithNextParticipants(nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func participantQuitInTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  func participantQuitOutOfTurnWithOutcome(matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  func endMatchInTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func endMatchInTurnWithMatchData(matchData: NSData, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 6.0, *)
  func saveCurrentTurnWithMatchData(matchData: NSData, completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func saveMergedMatchData(matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func sendExchangeToParticipants(participants: [GKTurnBasedParticipant], data: NSData, localizableMessageKey key: String, arguments: [String], timeout: NSTimeInterval, completionHandler: ((GKTurnBasedExchange, NSError) -> Void)?)
  @available(tvOS 7.0, *)
  func sendReminderToParticipants(participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(tvOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Unknown
  case Active
  case Complete
  case Resolved
  case Canceled
}
@available(tvOS 7.0, *)
var GKExchangeTimeoutDefault: NSTimeInterval
@available(tvOS 7.0, *)
var GKExchangeTimeoutNone: NSTimeInterval
@available(tvOS 7.0, *)
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
  @available(tvOS 7.0, *)
  func cancelWithLocalizableMessageKey(key: String, arguments: [String], completionHandler: ((NSError?) -> Void)?)
  @available(tvOS 7.0, *)
  func replyWithLocalizableMessageKey(key: String, arguments: [String], data: NSData, completionHandler: ((NSError?) -> Void)?)
  init()
}
@available(tvOS 7.0, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(tvOS 8.0, *)
  var replyDate: NSDate? { get }
  init()
}
