
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
@available(OSX 10.8, *)
class GKTurnBasedParticipant : NSObject {
  @available(OSX 10.10, *)
  var player: GKPlayer? { get }
  @NSCopying var lastTurnDate: NSDate? { get }
  var status: GKTurnBasedParticipantStatus { get }
  var matchOutcome: GKTurnBasedMatchOutcome
  @available(OSX 10.8, *)
  @NSCopying var timeoutDate: NSDate? { get }
  @available(OSX, introduced=10.8, deprecated=10.10, message="use player")
  var playerID: String? { get }
  init()
}
protocol GKTurnBasedEventListener {
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(OSX 10.8, *)
  optional func player(player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(OSX 10.11, *)
  optional func player(player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
}
@available(OSX 10.9, *)
var GKTurnTimeoutDefault: NSTimeInterval
@available(OSX 10.9, *)
var GKTurnTimeoutNone: NSTimeInterval
@available(OSX 10.8, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String? { get }
  var creationDate: NSDate? { get }
  var participants: [GKTurnBasedParticipant]? { get }
  var status: GKTurnBasedMatchStatus { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: NSData? { get }
  @available(OSX 10.10, *)
  func setLocalizableMessageWithKey(key: String, arguments: [String]?)
  var message: String?
  @available(OSX 10.8, *)
  var matchDataMaximumSize: Int { get }
  @available(OSX 10.10, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(OSX 10.10, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(OSX 10.10, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(OSX 10.10, *)
  var exchangeDataMaximumSize: Int { get }
  @available(OSX 10.10, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func find(for request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatches(completionHandler completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  class func load(id matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)? = nil)
  @available(OSX 10.9, *)
  func rematch(completionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func acceptInvite(completionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func declineInvite(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  func remove(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  func loadData(completionHandler completionHandler: ((NSData?, NSError?) -> Void)? = nil)
  @available(OSX 10.9, *)
  func endTurn(nextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, match matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.9, *)
  func participantQuitInTurn(with matchOutcome: GKTurnBasedMatchOutcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, match matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  func participantQuitOutOfTurn(with matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil)
  func endMatchInTurn(match matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func endMatchInTurn(match matchData: NSData, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func saveCurrentTurn(match matchData: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func saveMergedMatch(matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func sendExchange(to participants: [GKTurnBasedParticipant], data: NSData, localizableMessageKey key: String, arguments: [String], timeout: NSTimeInterval, completionHandler: ((GKTurnBasedExchange, NSError) -> Void)? = nil)
  @available(OSX 10.10, *)
  func sendReminder(to participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((NSError?) -> Void)? = nil)
  init()
}
@available(OSX 10.10, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case unknown
  case active
  case complete
  case resolved
  case canceled
}
@available(OSX 10.10, *)
var GKExchangeTimeoutDefault: NSTimeInterval
@available(OSX 10.10, *)
var GKExchangeTimeoutNone: NSTimeInterval
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  func cancel(localizableMessageKey key: String, arguments: [String], completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func reply(localizableMessageKey key: String, arguments: [String], data: NSData, completionHandler: ((NSError?) -> Void)? = nil)
  init()
}
@available(OSX 10.10, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(OSX 10.10, *)
  var replyDate: NSDate? { get }
  init()
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
protocol GKTurnBasedEventHandlerDelegate {
  @available(OSX, introduced=10.8, deprecated=10.10)
  func handleInvite(fromGameCenter playersToInvite: [GKPlayer])
  @available(OSX, introduced=10.9, deprecated=10.10)
  func handleTurnEvent(for match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func handleMatchEnded(match: GKTurnBasedMatch)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
class GKTurnBasedEventHandler : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  class func shared() -> GKTurnBasedEventHandler
  @available(OSX, introduced=10.8, deprecated=10.10)
  unowned(unsafe) var delegate: @sil_unmanaged protocol<GKTurnBasedEventHandlerDelegate, NSObjectProtocol>
  init()
}
