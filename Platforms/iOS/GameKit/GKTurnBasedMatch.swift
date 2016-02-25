
enum GKTurnBasedMatchStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Open
  case Ended
  case Matching
}
enum GKTurnBasedParticipantStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Invited
  case Declined
  case Matching
  case Active
  case Done
}
enum GKTurnBasedMatchOutcome : Int {
  init?(rawValue rawValue: Int)
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
}
protocol GKTurnBasedEventListener {
  @available(iOS 8.0, *)
  optional func player(_ player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedTurnEventForMatch match: GKTurnBasedMatch, didBecomeActive didBecomeActive: Bool)
  @available(iOS 5.0, *)
  optional func player(_ player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(iOS 9.0, *)
  optional func player(_ player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
  @available(iOS, introduced=7.0, deprecated=8.0, message="use didRequestMatchWithOtherPlayers")
  optional func player(_ player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
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
  func setLocalizableMessageWithKey(_ key: String, arguments arguments: [String]?)
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
  class func findMatchForRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatchesWithCompletionHandler(_ completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  class func loadMatchWithID(_ matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func rematchWithCompletionHandler(_ completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  func acceptInviteWithCompletionHandler(_ completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(iOS 5.0, *)
  func declineInviteWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  func removeWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  func loadMatchDataWithCompletionHandler(_ completionHandler: ((NSData?, NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func endTurnWithNextParticipants(_ nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func participantQuitInTurnWithOutcome(_ matchOutcome: GKTurnBasedMatchOutcome, nextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  func participantQuitOutOfTurnWithOutcome(_ matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  func endMatchInTurnWithMatchData(_ matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func endMatchInTurnWithMatchData(_ matchData: NSData, scores scores: [GKScore]?, achievements achievements: [GKAchievement]?, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 6.0, *)
  func saveCurrentTurnWithMatchData(_ matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func saveMergedMatchData(_ matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func sendExchangeToParticipants(_ participants: [GKTurnBasedParticipant], data data: NSData, localizableMessageKey key: String, arguments arguments: [String], timeout timeout: NSTimeInterval, completionHandler completionHandler: ((GKTurnBasedExchange, NSError) -> Void)?)
  @available(iOS 7.0, *)
  func sendReminderToParticipants(_ participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments arguments: [String], completionHandler completionHandler: ((NSError?) -> Void)?)
}
@available(iOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue rawValue: Int8)
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
  func cancelWithLocalizableMessageKey(_ key: String, arguments arguments: [String], completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 7.0, *)
  func replyWithLocalizableMessageKey(_ key: String, arguments arguments: [String], data data: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
}
@available(iOS 7.0, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(iOS 8.0, *)
  var replyDate: NSDate? { get }
}
