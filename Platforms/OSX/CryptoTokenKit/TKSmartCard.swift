
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
  case missing
  case empty
  case probing
  case muteCard
  case validCard
}
@available(OSX 10.11, *)
enum TKSmartCardPINCharset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case numeric
  case alphanumeric
  case upperAlphanumeric
}
@available(OSX 10.11, *)
enum TKSmartCardPINEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case binary
  case ASCII
  case BCD
}
@available(OSX 10.11, *)
enum TKSmartCardPINJustification : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case left
  case right
}
@available(OSX 10.11, *)
struct TKSmartCardPINCompletion : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var maxLength: TKSmartCardPINCompletion { get }
  static var key: TKSmartCardPINCompletion { get }
  static var timeout: TKSmartCardPINCompletion { get }
}
@available(OSX 10.11, *)
struct TKSmartCardPINConfirmation : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: TKSmartCardPINConfirmation { get }
  static var new: TKSmartCardPINConfirmation { get }
  static var current: TKSmartCardPINConfirmation { get }
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
  optional func characterEntered(in interaction: TKSmartCardUserInteraction)
  optional func correctionKeyPressed(in interaction: TKSmartCardUserInteraction)
  optional func validationKeyPressed(in interaction: TKSmartCardUserInteraction)
  optional func invalidCharacterEntered(in interaction: TKSmartCardUserInteraction)
  optional func oldPINRequested(in interaction: TKSmartCardUserInteraction)
  optional func newPINRequested(in interaction: TKSmartCardUserInteraction)
  optional func newPINConfirmationRequested(in interaction: TKSmartCardUserInteraction)
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
  func userInteractionForSecurePINVerification(with PINFormat: TKSmartCardPINFormat, apdu APDU: Data, pinByteOffset PINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINVerification?
  @available(OSX 10.11, *)
  func userInteractionForSecurePINChange(with PINFormat: TKSmartCardPINFormat, apdu APDU: Data, currentPINByteOffset: Int, newPINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINChange?
  init()
}
extension TKSmartCard {
  var cla: UInt8
  var useExtendedLength: Bool
  func sendIns(ins: UInt8, p1: UInt8, p2: UInt8, data requestData: Data?, le: Number?, reply: (Data?, UInt16, Error?) -> Void)
}
