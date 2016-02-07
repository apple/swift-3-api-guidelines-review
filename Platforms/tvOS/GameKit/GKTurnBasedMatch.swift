
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
class GKTurnBasedParticipant : Object {
  @available(tvOS 8.0, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: Date? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(tvOS 6.0, *)
  @NSCopying var timeoutDate: Date? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(tvOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(tvOS 7.0, *)
  optional func player(player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
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
var GKTurnTimeoutDefault: TimeInterval
@available(tvOS 6.0, *)
var GKTurnTimeoutNone: TimeInterval
@available(tvOS 5.0, *)
class GKTurnBasedMatch : Object {
  var matchID: String? { get }
  var creationDate: Date? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: Data? { get }
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
  class func findFor(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, Error?) -> Void)
  class func loadMatches(completionHandler completionHandler: (([GKTurnBasedMatch]?, Error?) -> Void)? = nil)
  @available(tvOS 5.0, *)
  class func load(id matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func rematch(completionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(tvOS 5.0, *)
  func acceptInvite(completionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(tvOS 5.0, *)
  func declineInviteWith(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func remove(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func loadData(completionHandler completionHandler: ((Data?, Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func endTurn(nextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func participantQuitInTurnWith(matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func participantQuitOutOfTurnWith(matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func endMatchInTurnWithMatch(matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func endMatchInTurnWithMatch(matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func saveCurrentTurnWithMatch(matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func saveMergedMatch(matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func sendExchangeTo(participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval, completionHandler: ((GKTurnBasedExchange, Error) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func sendReminderTo(participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
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
var GKExchangeTimeoutDefault: TimeInterval
@available(tvOS 7.0, *)
var GKExchangeTimeoutNone: TimeInterval
@available(tvOS 7.0, *)
class GKTurnBasedExchange : Object {
  var exchangeID: String? { get }
  var sender: GKTurnBasedParticipant? { get }
  var recipients: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedExchangeStatus { get }
  var message: String? { get }
  var data: Data? { get }
  var sendDate: Date? { get }
  var timeoutDate: Date? { get }
  var completionDate: Date? { get }
  var replies: [GKTurnBasedExchangeReply]? { get }
  @available(tvOS 7.0, *)
  func cancel(localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func reply(localizableMessageKey key: String, arguments: [String], data: Data, completionHandler: ((Error?) -> Void)? = nil)
  init()
}
@available(tvOS 7.0, *)
class GKTurnBasedExchangeReply : Object {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: Data? { get }
  @available(tvOS 8.0, *)
  var replyDate: Date? { get }
  init()
}
