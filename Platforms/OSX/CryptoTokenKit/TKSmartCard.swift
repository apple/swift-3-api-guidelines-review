
@available(OSX 10.10, *)
class TKSmartCardSlotManager : NSObject {
  class func defaultManager() -> Self?
  var slotNames: [String] { get }
  func getSlotWithName(_ name: String, reply reply: (TKSmartCardSlot?) -> Void)
}
@available(OSX 10.10, *)
enum TKSmartCardSlotState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Missing
  case Empty
  case Probing
  case MuteCard
  case ValidCard
}
@available(OSX 10.11, *)
enum TKSmartCardPINCharset : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Numeric
  case Alphanumeric
  case UpperAlphanumeric
}
@available(OSX 10.11, *)
enum TKSmartCardPINEncoding : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Binary
  case ASCII
  case BCD
}
@available(OSX 10.11, *)
enum TKSmartCardPINJustification : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Right
}
@available(OSX 10.11, *)
struct TKSmartCardPINCompletion : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var MaxLength: TKSmartCardPINCompletion { get }
  static var Key: TKSmartCardPINCompletion { get }
  static var Timeout: TKSmartCardPINCompletion { get }
}
@available(OSX 10.11, *)
struct TKSmartCardPINConfirmation : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: TKSmartCardPINConfirmation { get }
  static var New: TKSmartCardPINConfirmation { get }
  static var Current: TKSmartCardPINConfirmation { get }
}
@available(OSX 10.11, *)
class TKSmartCardPINFormat : NSObject {
  var charset: TKSmartCardPINCharset
  var encoding: TKSmartCardPINEncoding
  var minPINLength: Int
  var maxPINLength: Int
  var PINBlockByteLength: Int
  var PINJustification: TKSmartCardPINJustification
  var PINBitOffset: Int
  var PINLengthBitOffset: Int
  var PINLengthBitSize: Int
}
@available(OSX 10.11, *)
protocol TKSmartCardUserInteractionDelegate {
  optional func characterEnteredInUserInteraction(_ interaction: TKSmartCardUserInteraction)
  optional func correctionKeyPressedInUserInteraction(_ interaction: TKSmartCardUserInteraction)
  optional func validationKeyPressedInUserInteraction(_ interaction: TKSmartCardUserInteraction)
  optional func invalidCharacterEnteredInUserInteraction(_ interaction: TKSmartCardUserInteraction)
  optional func oldPINRequestedInUserInteraction(_ interaction: TKSmartCardUserInteraction)
  optional func newPINRequestedInUserInteraction(_ interaction: TKSmartCardUserInteraction)
  optional func newPINConfirmationRequestedInUserInteraction(_ interaction: TKSmartCardUserInteraction)
}
@available(OSX 10.11, *)
class TKSmartCardUserInteraction : NSObject {
  weak var delegate: @sil_weak TKSmartCardUserInteractionDelegate?
  var initialTimeout: NSTimeInterval
  var interactionTimeout: NSTimeInterval
  func runWithReply(_ reply: (Bool, NSError?) -> Void)
  func cancel() -> Bool
}
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForPINOperation : TKSmartCardUserInteraction {
  var PINCompletion: TKSmartCardPINCompletion
  var PINMessageIndices: [NSNumber]?
  var locale: NSLocale!
  var resultSW: UInt16
  var resultData: NSData?
}
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForSecurePINVerification : TKSmartCardUserInteractionForPINOperation {
}
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForSecurePINChange : TKSmartCardUserInteractionForPINOperation {
  var PINConfirmation: TKSmartCardPINConfirmation
}
@available(OSX 10.10, *)
class TKSmartCardSlot : NSObject {
  var state: TKSmartCardSlotState { get }
  var ATR: TKSmartCardATR? { get }
  var name: String { get }
  var maxInputLength: Int { get }
  var maxOutputLength: Int { get }
  func makeSmartCard() -> TKSmartCard?
}
@available(OSX 10.10, *)
class TKSmartCard : NSObject {
  var slot: TKSmartCardSlot { get }
  var valid: Bool { get }
  var allowedProtocols: TKSmartCardProtocol
  var currentProtocol: TKSmartCardProtocol { get }
  var sensitive: Bool
  var context: AnyObject?
  func beginSessionWithReply(_ reply: (Bool, NSError?) -> Void)
  func transmitRequest(_ request: NSData, reply reply: (NSData?, NSError?) -> Void)
  func endSession()
  @available(OSX 10.11, *)
  func userInteractionForSecurePINVerificationWithPINFormat(_ PINFormat: TKSmartCardPINFormat, APDU APDU: NSData, PINByteOffset PINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINVerification?
  @available(OSX 10.11, *)
  func userInteractionForSecurePINChangeWithPINFormat(_ PINFormat: TKSmartCardPINFormat, APDU APDU: NSData, currentPINByteOffset currentPINByteOffset: Int, newPINByteOffset newPINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINChange?
}
extension TKSmartCard {
  var cla: UInt8
  var useExtendedLength: Bool
  func sendIns(_ ins: UInt8, p1 p1: UInt8, p2 p2: UInt8, data requestData: NSData?, le le: NSNumber?, reply reply: (NSData?, UInt16, NSError?) -> Void)
}
