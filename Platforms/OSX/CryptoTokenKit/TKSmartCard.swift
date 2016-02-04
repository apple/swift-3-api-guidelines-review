
@available(OSX 10.10, *)
class TKSmartCardSlotManager : Object {
  class func defaultManager() -> Self?
  var slotNames: [String] { get }
  func getSlotWithName(name: String, reply: (TKSmartCardSlot?) -> Void)
  init()
}
@available(OSX 10.10, *)
enum TKSmartCardSlotState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Missing
  case Empty
  case Probing
  case MuteCard
  case ValidCard
}
@available(OSX 10.11, *)
enum TKSmartCardPINCharset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Numeric
  case Alphanumeric
  case UpperAlphanumeric
}
@available(OSX 10.11, *)
enum TKSmartCardPINEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Binary
  case ASCII
  case BCD
}
@available(OSX 10.11, *)
enum TKSmartCardPINJustification : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Right
}
@available(OSX 10.11, *)
struct TKSmartCardPINCompletion : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MaxLength: TKSmartCardPINCompletion { get }
  static var Key: TKSmartCardPINCompletion { get }
  static var Timeout: TKSmartCardPINCompletion { get }
}
@available(OSX 10.11, *)
struct TKSmartCardPINConfirmation : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: TKSmartCardPINConfirmation { get }
  static var New: TKSmartCardPINConfirmation { get }
  static var Current: TKSmartCardPINConfirmation { get }
}
@available(OSX 10.11, *)
class TKSmartCardPINFormat : Object {
  var charset: TKSmartCardPINCharset
  var encoding: TKSmartCardPINEncoding
  var minPINLength: Int
  var maxPINLength: Int
  var pinBlockByteLength: Int
  var pinJustification: TKSmartCardPINJustification
  var pinBitOffset: Int
  var pinLengthBitOffset: Int
  var pinLengthBitSize: Int
  init()
}
@available(OSX 10.11, *)
protocol TKSmartCardUserInteractionDelegate {
  optional func characterEnteredIn(interaction: TKSmartCardUserInteraction)
  optional func correctionKeyPressedIn(interaction: TKSmartCardUserInteraction)
  optional func validationKeyPressedIn(interaction: TKSmartCardUserInteraction)
  optional func invalidCharacterEnteredIn(interaction: TKSmartCardUserInteraction)
  optional func oldPINRequestedIn(interaction: TKSmartCardUserInteraction)
  optional func newPINRequestedIn(interaction: TKSmartCardUserInteraction)
  optional func newPINConfirmationRequestedIn(interaction: TKSmartCardUserInteraction)
}
@available(OSX 10.11, *)
class TKSmartCardUserInteraction : Object {
  weak var delegate: @sil_weak TKSmartCardUserInteractionDelegate?
  var initialTimeout: TimeInterval
  var interactionTimeout: TimeInterval
  func runWithReply(reply: (Bool, Error?) -> Void)
  func cancel() -> Bool
  init()
}
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForPINOperation : TKSmartCardUserInteraction {
  var pinCompletion: TKSmartCardPINCompletion
  var pinMessageIndices: [Number]?
  var locale: Locale!
  var resultSW: UInt16
  var resultData: Data?
  init()
}
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForSecurePINVerification : TKSmartCardUserInteractionForPINOperation {
  init()
}
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForSecurePINChange : TKSmartCardUserInteractionForPINOperation {
  var pinConfirmation: TKSmartCardPINConfirmation
  init()
}
@available(OSX 10.10, *)
class TKSmartCardSlot : Object {
  var state: TKSmartCardSlotState { get }
  var atr: TKSmartCardATR? { get }
  var name: String { get }
  var maxInputLength: Int { get }
  var maxOutputLength: Int { get }
  func makeSmartCard() -> TKSmartCard?
  init()
}
@available(OSX 10.10, *)
class TKSmartCard : Object {
  var slot: TKSmartCardSlot { get }
  var valid: Bool { get }
  var allowedProtocols: TKSmartCardProtocol
  var currentProtocol: TKSmartCardProtocol { get }
  var sensitive: Bool
  var context: AnyObject?
  func beginSessionWithReply(reply: (Bool, Error?) -> Void)
  func transmitRequest(request: Data, reply: (Data?, Error?) -> Void)
  func endSession()
  @available(OSX 10.11, *)
  func userInteractionForSecurePINVerificationWith(PINFormat: TKSmartCardPINFormat, apdu APDU: Data, pinByteOffset PINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINVerification?
  @available(OSX 10.11, *)
  func userInteractionForSecurePINChangeWith(PINFormat: TKSmartCardPINFormat, apdu APDU: Data, currentPINByteOffset: Int, newPINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINChange?
  init()
}
extension TKSmartCard {
  var cla: UInt8
  var useExtendedLength: Bool
  func sendIns(ins: UInt8, p1: UInt8, p2: UInt8, data requestData: Data?, le: Number?, reply: (Data?, UInt16, Error?) -> Void)
}
