
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
}
protocol GKTurnBasedEventListener {
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, receivedTurnEventForMatch match: GKTurnBasedMatch, didBecomeActive didBecomeActive: Bool)
  @available(OSX 10.8, *)
  optional func player(_ player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, forMatch match: GKTurnBasedMatch)
  @available(OSX 10.11, *)
  optional func player(_ player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
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
  func setLocalizableMessageWithKey(_ key: String, arguments arguments: [String]?)
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
  class func findMatchForRequest(_ request: GKMatchRequest, withCompletionHandler completionHandler: (GKTurnBasedMatch?, NSError?) -> Void)
  class func loadMatchesWithCompletionHandler(_ completionHandler: (([GKTurnBasedMatch]?, NSError?) -> Void)?)
  @available(OSX 10.8, *)
  class func loadMatchWithID(_ matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(OSX 10.9, *)
  func rematchWithCompletionHandler(_ completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(OSX 10.8, *)
  func acceptInviteWithCompletionHandler(_ completionHandler: ((GKTurnBasedMatch?, NSError?) -> Void)?)
  @available(OSX 10.8, *)
  func declineInviteWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  func removeWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  func loadMatchDataWithCompletionHandler(_ completionHandler: ((NSData?, NSError?) -> Void)?)
  @available(OSX 10.9, *)
  func endTurnWithNextParticipants(_ nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.9, *)
  func participantQuitInTurnWithOutcome(_ matchOutcome: GKTurnBasedMatchOutcome, nextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: NSTimeInterval, matchData matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  func participantQuitOutOfTurnWithOutcome(_ matchOutcome: GKTurnBasedMatchOutcome, withCompletionHandler completionHandler: ((NSError?) -> Void)?)
  func endMatchInTurnWithMatchData(_ matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func endMatchInTurnWithMatchData(_ matchData: NSData, scores scores: [GKScore]?, achievements achievements: [GKAchievement]?, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  func saveCurrentTurnWithMatchData(_ matchData: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func saveMergedMatchData(_ matchData: NSData, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func sendExchangeToParticipants(_ participants: [GKTurnBasedParticipant], data data: NSData, localizableMessageKey key: String, arguments arguments: [String], timeout timeout: NSTimeInterval, completionHandler completionHandler: ((GKTurnBasedExchange, NSError) -> Void)?)
  @available(OSX 10.10, *)
  func sendReminderToParticipants(_ participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments arguments: [String], completionHandler completionHandler: ((NSError?) -> Void)?)
}
@available(OSX 10.10, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue rawValue: Int8)
  var rawValue: Int8 { get }
  case Unknown
  case Active
  case Complete
  case Resolved
  case Canceled
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
  func cancelWithLocalizableMessageKey(_ key: String, arguments arguments: [String], completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func replyWithLocalizableMessageKey(_ key: String, arguments arguments: [String], data data: NSData, completionHandler completionHandler: ((NSError?) -> Void)?)
}
@available(OSX 10.10, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant? { get }
  var message: String? { get }
  var data: NSData? { get }
  @available(OSX 10.10, *)
  var replyDate: NSDate? { get }
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
protocol GKTurnBasedEventHandlerDelegate {
  @available(OSX, introduced=10.8, deprecated=10.10)
  func handleInviteFromGameCenter(_ playersToInvite: [GKPlayer])
  @available(OSX, introduced=10.9, deprecated=10.10)
  func handleTurnEventForMatch(_ match: GKTurnBasedMatch, didBecomeActive didBecomeActive: Bool)
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func handleMatchEnded(_ match: GKTurnBasedMatch)
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
class GKTurnBasedEventHandler : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  class func sharedTurnBasedEventHandler() -> GKTurnBasedEventHandler
  @available(OSX, introduced=10.8, deprecated=10.10)
  unowned(unsafe) var delegate: @sil_unmanaged protocol<GKTurnBasedEventHandlerDelegate, NSObjectProtocol>
}
