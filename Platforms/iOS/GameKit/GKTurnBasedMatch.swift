
enum GKTurnBasedMatchStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case open
  case ended
  case matching
}
enum GKTurnBasedParticipantStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case invited
  case declined
  case matching
  case active
  case done
}
enum GKTurnBasedMatchOutcome : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case quit
  case won
  case lost
  case tied
  case timeExpired
  case first
  case second
  case third
  case fourth
  case customRange
}
@available(iOS 5.0, *)
class GKTurnBasedParticipant : Object {
  @available(iOS 8.0, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: Date? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(iOS 6.0, *)
  @NSCopying var timeoutDate: Date? { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="use player")
  var playerID: String? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(iOS 5.0, *)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(iOS 9.0, *)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
  @available(iOS, introduced=7.0, deprecated=8.0, message="use didRequestMatchWithOtherPlayers")
  optional func player(player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 6.0, *)
var GKTurnTimeoutDefault: TimeInterval
@available(iOS 6.0, *)
var GKTurnTimeoutNone: TimeInterval
@available(iOS 5.0, *)
class GKTurnBasedMatch : Object {
  var matchID: String? { get }
  var creationDate: Date? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: Data? { get }
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
  class func findFor(request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, Error?) -> Void)
  class func loadMatches(completionHandler completionHandler: (([GKTurnBasedMatch]?, Error?) -> Void)? = nil)
  @available(iOS 5.0, *)
  class func load(id matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func rematch(completionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(iOS 5.0, *)
  func acceptInvite(completionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(iOS 5.0, *)
  func declineInvite(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func remove(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  func loadData(completionHandler completionHandler: ((Data?, Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func endTurn(nextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func participantQuitInTurn(with matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func participantQuitOutOfTurn(with matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func endMatchInTurnWithMatch(matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func endMatchInTurnWithMatch(matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func saveCurrentTurnWithMatch(matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func saveMergedMatch(matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func sendExchange(to participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval, completionHandler: ((GKTurnBasedExchange, Error) -> Void)? = nil)
  @available(iOS 7.0, *)
  func sendReminder(to participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  init()
}
@available(iOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case unknown
  case active
  case complete
  case resolved
  case canceled
}
@available(iOS 7.0, *)
var GKExchangeTimeoutDefault: TimeInterval
@available(iOS 7.0, *)
var GKExchangeTimeoutNone: TimeInterval
@available(iOS 7.0, *)
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
  @available(iOS 7.0, *)
  func cancel(localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func reply(localizableMessageKey key: String, arguments: [String], data: Data, completionHandler: ((Error?) -> Void)? = nil)
  init()
}
@available(iOS 7.0, *)
class GKTurnBasedExchangeReply : Object {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: Data? { get }
  @available(iOS 8.0, *)
  var replyDate: Date? { get }
  init()
}
