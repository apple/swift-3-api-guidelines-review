
let TKErrorDomain: String
enum TKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotImplemented
  case CommunicationError
  case CorruptedData
  case CanceledByUser
  case AuthenticationFailed
  case ObjectNotFound
  case TokenNotFound
  case BadParameter
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use TKErrorCodeAuthenticationFailed")
  static var TKErrorAuthenticationFailed: TKErrorCode { get }
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use TKErrorCodeObjectNotFound")
  static var TKErrorObjectNotFound: TKErrorCode { get }
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use TKErrorCodeTokenNotFound")
  static var TKErrorTokenNotFound: TKErrorCode { get }
}

/// Represents pool of smart card reader slots.
@available(OSX 10.10, *)
class TKSmartCardSlotManager : NSObject {

  /// Global pool of smart card reader slots.
  /// Note that defaultManager instance is accessible only if the calling application has 'com.apple.security.smartcard' entitlement set to Boolean:YES.  If the calling application does not have this entitlement, defaultManager is always set to nil.
  class func defaultManager() -> Self?

  /// Array of currently known slots in the system.  Slots are identified by NSString name instances.  Use KVO to be notified about slots arrivals and removals.
  var slotNames: [String] { get }

  /// Instantiates smartcard reader slot of specified name.  If specified name is not registered, returns nil.
  func getSlotWithName(name: String, reply: (TKSmartCardSlot?) -> Void)
  init()
}

/// Enumerates all possible slot states.
@available(OSX 10.10, *)
enum TKSmartCardSlotState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Slot is no longer known to the system.  This is terminal state for TKSmartCardSlot instance, once reached, the slot instance can never be revived.
  case Missing

  /// The slot is empty, no card is inserted.
  case Empty

  /// The card was inserted into the slot and an initial probe is in progress.
  case Probing

  /// The card inserted in the slot does not answer.
  case MuteCard

  /// Card properly answered to reset.
  case ValidCard
}

/// Enumerates all possible PIN character sets.
@available(OSX 10.11, *)
enum TKSmartCardPINCharset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// PIN is only composed of digits.
  case Numeric

  /// PIN can be composed of digits and letters.
  case Alphanumeric

  /// PIN can be composed of digits and uppercase letters.
  case UpperAlphanumeric
}

/// Enumerates all possible PIN encoding types.
@available(OSX 10.11, *)
enum TKSmartCardPINEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Characters are encoded in Binary format (1234 => 01h 02h 03h 04h).
  case Binary

  /// Characters are encoded in ASCII format (1234 => 31h 32h 33h 34h).
  case ASCII

  /// Characters (only digits) are encoded in BCD format (1234 => 12h 34h).
  case BCD
}

/// Enumerates all posible PIN justification types.
@available(OSX 10.11, *)
enum TKSmartCardPINJustification : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Justify to the left.
  case Left

  /// Justify to the right.
  case Right
}

/// Bitmask specifying condition(s) under which PIN entry should be considered complete.
@available(OSX 10.11, *)
struct TKSmartCardPINCompletion : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt

  /// Completion by reaching the maximum PIN length.
  static var MaxLength: TKSmartCardPINCompletion { get }

  /// Completion by pressing the validation key.
  static var Key: TKSmartCardPINCompletion { get }

  /// Completion by timeout expiration.
  static var Timeout: TKSmartCardPINCompletion { get }
}

/// Bitmask specifying whether PIN confirmation should be requested.
@available(OSX 10.11, *)
struct TKSmartCardPINConfirmation : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt

  /// No confirmation requested.
  static var None: TKSmartCardPINConfirmation { get }

  /// Confirmation (entry) of the new PIN requested.
  static var New: TKSmartCardPINConfirmation { get }

  /// Confirmation (entry) of the current PIN requested.
  static var Current: TKSmartCardPINConfirmation { get }
}

/// Specifies PIN formatting properties.
@available(OSX 10.11, *)
class TKSmartCardPINFormat : NSObject {

  /// Format of PIN characters.
  /// @note Default value: TKSmartCardPINCharsetNumeric
  var charset: TKSmartCardPINCharset

  /// Encoding of PIN characters.
  /// @note Default value: TKSmartCardPINEncodingASCII
  var encoding: TKSmartCardPINEncoding

  /// Minimum number of characters to form a valid PIN.
  /// @note Default value: 4
  var minPINLength: Int

  /// Maximum number of characters to form a valid PIN.
  /// @note Default value: 8
  var maxPINLength: Int

  /// Total length of the PIN block in bytes.
  /// @note Default value: 8
  var PINBlockByteLength: Int

  /// PIN justification within the PIN block.
  /// @note Default value: TKSmartCardPINJustificationLeft
  var PINJustification: TKSmartCardPINJustification

  /// Offset in bits within the PIN block to mark a location for filling in the formatted PIN (justified with respect to PINJustification).
  /// @note Default value: 0
  /// @discussion Note that the value of PINBitOffset indirectly controls the internal system units indicator. If PINBitOffset is byte aligned (PINBitOffset mod 8 is equal to 0), the internal representation of PINBitOffset gets converted from bits to bytes.
  var PINBitOffset: Int

  /// Offset in bits within the PIN block to mark a location for filling in the PIN length (always left justified).
  /// @note Default value: 0
  /// @discussion Note that the value of PINLengthBitOffset indirectly controls the internal system units indicator. If PINLengthBitOffset is byte aligned (PINLengthBitOffset mod 8 is equal to 0), the internal representation of PINLengthBitOffset gets converted from bits to bytes.
  var PINLengthBitOffset: Int

  /// Size in bits of the PIN length field. If set to 0, PIN length is not written.
  /// @note Default value: 0
  var PINLengthBitSize: Int
  init()
}

/// Delegate for user interactions involving the smart card reader.
@available(OSX 10.11, *)
protocol TKSmartCardUserInteractionDelegate {

  /// A valid character has been entered.
  optional func characterEnteredInUserInteraction(interaction: TKSmartCardUserInteraction)

  /// A correction key has been pressed.
  optional func correctionKeyPressedInUserInteraction(interaction: TKSmartCardUserInteraction)

  /// The validation key has been pressed (end of PIN entry).
  optional func validationKeyPressedInUserInteraction(interaction: TKSmartCardUserInteraction)

  /// An invalid character has been entered.
  optional func invalidCharacterEnteredInUserInteraction(interaction: TKSmartCardUserInteraction)

  /// Indicates that the old PIN needs to be entered.
  optional func oldPINRequestedInUserInteraction(interaction: TKSmartCardUserInteraction)

  /// Indicates that the new PIN needs to be entered.
  optional func newPINRequestedInUserInteraction(interaction: TKSmartCardUserInteraction)

  /// Indicates that the new PIN needs to be confirmed (re-entered).
  optional func newPINConfirmationRequestedInUserInteraction(interaction: TKSmartCardUserInteraction)
}

/// Represents handle to a user interaction involving the smart card reader.
/// @discussion It is a proxy object obtained as a result of invoking the userInteractionFor*** family of methods in TKSmartCardSlot and TKSmartCard.
@available(OSX 10.11, *)
class TKSmartCardUserInteraction : NSObject {

  /// Delegate for state observing of the interaction.
  weak var delegate: @sil_weak TKSmartCardUserInteractionDelegate?

  /// Initial interaction timeout. If set to 0, the reader-defined default timeout is used.
  /// @note Default value: 0
  var initialTimeout: NSTimeInterval

  /// Timeout after the first key stroke. If set to 0, the reader-defined default timeout is used.
  /// @note Default value: 0
  var interactionTimeout: NSTimeInterval

  /// Runs the interaction.
  func runWithReply(reply: (Bool, NSError?) -> Void)

  /// Attempts to cancel a running interaction. Note that for some interactions, this functionality might not be available.
  /// @return Returns NO if the operation is not running, or cancelling is not supported.
  func cancel() -> Bool
  init()
}

/// User interaction for the secure PIN operations on the smart card reader.
/// @note Result is available after the interaction has been successfully completed.
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForPINOperation : TKSmartCardUserInteraction {

  /// Bitmask specifying condition(s) under which PIN entry should be considered complete.
  /// @note Default value: TKSmartCardPINCompletionKey
  var PINCompletion: TKSmartCardPINCompletion

  /// List of message indices referring to a predefined message table. It is used to specify the type and number of messages displayed during the PIN operation.
  /// @discussion If nil, the reader does not display any message (reader specific). Typically, PIN verification takes 1 message, PIN modification 1-3 messages.
  /// @note Default value: nil
  var PINMessageIndices: [NSNumber]?

  /// Locale defining the language of displayed messages. If set to nil, the user's current locale is used.
  /// @note Default value: the user's current locale
  var locale: NSLocale!

  /// SW1SW2 result code.
  var resultSW: UInt16

  /// Optional block of returned data (without SW1SW2 bytes).
  var resultData: NSData?
  init()
}

/// User interaction for the secure PIN verification on the smart card reader.
/// @note Result is available after the interaction has been successfully completed.
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForSecurePINVerification : TKSmartCardUserInteractionForPINOperation {
  init()
}

/// User interaction for the secure PIN change on the smart card reader.
/// @note Result is available after the interaction has been successfully completed.
@available(OSX 10.11, *)
class TKSmartCardUserInteractionForSecurePINChange : TKSmartCardUserInteractionForPINOperation {

  /// Bitmask specifying whether PIN confirmation should be requested.
  /// @note Default value: TKSmartCardPINConfirmationNone
  var PINConfirmation: TKSmartCardPINConfirmation
  init()
}

/// Represents single slot which can contain smartcard.
@available(OSX 10.10, *)
class TKSmartCardSlot : NSObject {

  /// Current state of the slot.  Use KVO to be notified about state changes.
  var state: TKSmartCardSlotState { get }

  /// ATR of the inserted smartcard, or nil if no or mute smartcard is inserted.
  var ATR: TKSmartCardATR? { get }

  /// Name of the smart card reader slot.
  var name: String { get }

  /// Maximal length of input APDU that the slot is able to transfer to the card.
  var maxInputLength: Int { get }

  /// Maximal length of output APDU that the slot is able to transfer from the card.
  var maxOutputLength: Int { get }

  /// Creates new object representing currently inserted and valid card.
  /// @discussion It is possible to instantiate multiple objects for single card, exclusivity is handled by sessions on the level of created smart card objects.
  /// @return Newly created smart card object, or nil if slot does not contain valid card.
  func makeSmartCard() -> TKSmartCard?
  init()
}

/// Represents smart card inserted in the slot. Once the card is physically removed from the slot, the session object is invalid and will always fail the operation invoked on it.  In order to communicate with the card, an exclusive session must be established.
@available(OSX 10.10, *)
class TKSmartCard : NSObject {

  /// Slot in which is this card inserted.
  var slot: TKSmartCardSlot { get }

  /// Flag indicating whether card is valid, i.e. it was not removed from the reader.  Use Key-Value-Observing to be notified about card removal.
  var valid: Bool { get }

  /// Bitmask containing allowed protocols to be used when communicating with the card.  This property is consulted only during connection to the card, changes are not propagated to already connected session.  By default, any protocol can be used.
  var allowedProtocols: TKSmartCardProtocol

  /// Protocol used for communication with the smartcard.  If no card session is established, TKSmartCardProtocolNone is set.
  var currentProtocol: TKSmartCardProtocol { get }

  /// Flag indicating whether card session should be considered as sensitive.  Sensitive session always gets card after reset before communicating with it and never leaves card without reset to be used by another smart card object.  This might be important in case that card session contain some important state which should not leak to another smart card object (possibly running in another, foreign application).  Default is NO.
  var sensitive: Bool

  /// User-specified context kept as long as the card is powered.  Once the card is removed or another TKSmartCard object opens session, this property is automatically set to nil.
  var context: AnyObject?

  /// Begins session with the card.
  /// @discussion When session exists, other requests for sessions from other card objects to the same card are blocked. Session is reference-counted, the same amount of 'end' calls must be done to really terminate the session. Note that finishing session does not automatically mean that the card is disconnected; it only happens when another session from different card object is requested.
  /// @param success Signals whether session was successfully started.
  /// @param error More information about error preventing the transaction to start
  func beginSessionWithReply(reply: (Bool, NSError?) -> Void)

  /// Transmits raw command to the card.  This call is allowed only inside session.
  /// @param request Request part of APDU
  /// @param reponse Response part of APDU, or nil if communication with the card failed
  /// @param error Error details when communication with the card failed
  func transmitRequest(request: NSData, reply: (NSData?, NSError?) -> Void)

  /// Terminates the transaction. If no transaction is pending any more, the connection will be closed if there is another session in the system waiting for the transaction.
  func endSession()

  /// Creates a new user interaction object for secure PIN verification using the smart card reader facilities (typically a HW keypad).
  /// @note This interaction is only allowed within a session.
  /// @param PINFormat PIN format descriptor.
  /// @param APDU Predefined APDU in which the smart card reader fills in the PIN.
  /// @param PINByteOffset Offset in bytes within APDU data field to mark a location of a PIN block for filling in the entered PIN (currently unused, must be 0).
  /// @return A new user interaction object, or nil if this feature is not supported by the smart card reader. After the interaction has been successfully completed the operation result is available in the result properites.
  @available(OSX 10.11, *)
  func userInteractionForSecurePINVerificationWithPINFormat(PINFormat: TKSmartCardPINFormat, APDU: NSData, PINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINVerification?

  /// Creates a new user interaction object for secure PIN change using the smart card reader facilities (typically a HW keypad).
  /// @note This interaction is only allowed within a session.
  /// @param PINFormat PIN format descriptor.
  /// @param APDU Predefined APDU in which the smart card reader fills in the PIN(s).
  /// @param currentPINByteOffset Offset in bytes within APDU data field to mark a location of a PIN block for filling in the current PIN.
  /// @param newPINByteOffset Offset in bytes within APDU data field to mark a location of a PIN block for filling in the new PIN.
  /// @return A new user interaction object, or nil if this feature is not supported by the smart card reader. After the interaction has been successfully completed the operation result is available in the result properites.
  @available(OSX 10.11, *)
  func userInteractionForSecurePINChangeWithPINFormat(PINFormat: TKSmartCardPINFormat, APDU: NSData, currentPINByteOffset: Int, newPINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINChange?
  init()
}
extension TKSmartCard {

  /// CLA byte which will be used for sendIns: APDU transmits.  Default value is 0x00.
  var cla: UInt8

  /// Flag indicating whether extended length APDUs should be used. It is automatically enabled only when used slot supports transmitting extended length commands and card announces that extended length APDU are supported in its ATR. However, caller can explicitely override this decision at its will.
  var useExtendedLength: Bool

  /// Transmits APDU to the card and returns response.
  /// @discussion Asynchronous high level variant of command for transmitting APDU to the card.  Handles all ISO7816-4 APDU cases translation to proper sequences according to used protocol.  If useExtendedLength is enabled and it is decided that it is beneficial for current set of arguments, extended APDUs are used automatically.
  /// @param ins INS code of the APDU
  /// @param p1 P1 code of the APDU
  /// @param p2 P2 code of the APDU
  /// @param requestData Data field of the APDU, or nil if no input data field should be present (i.e case1 or case2 APDUs).  Length of the data serves as Lc field of the APDU.
  /// @param le Expected number of bytes to be returned, or nil if no output data are expected (i.e. case1 or case3 APDUs). To get as much bytes as card provides, pass @0.
  /// @param replyData Block of returned data without SW1SW2 bytes, or nil if an error occured.
  /// @param sw SW1SW2 result code
  /// @param error Contains error details when nil is returned.  Specific error is also filled in if there was no communication error, but card returned other SW code than 0x9000.
  func sendIns(ins: UInt8, p1: UInt8, p2: UInt8, data requestData: NSData?, le: NSNumber?, reply: (NSData?, UInt16, NSError?) -> Void)
}

/// Bitmask of available smartcard protocols.
@available(OSX 10.10, *)
struct TKSmartCardProtocol : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: TKSmartCardProtocol { get }
  static var T0: TKSmartCardProtocol { get }
  static var T1: TKSmartCardProtocol { get }
  static var T15: TKSmartCardProtocol { get }
  static var Any: TKSmartCardProtocol { get }
}

/// Represents single interface-bytes group of ATR.
@available(OSX 10.10, *)
class TKSmartCardATRInterfaceGroup : NSObject {

  /// TA interface byte of ATR group, or nil if TA is not present.
  var TA: NSNumber? { get }

  /// TB interface byte of ATR group, or nil if TB is not present.
  var TB: NSNumber? { get }

  /// TC interface byte of ATR group, or nil if TC is not present.
  var TC: NSNumber? { get }

  /// Protocol number for this group.  First group (global) has protocol unassigned, contains nil.
  var `protocol`: NSNumber? { get }
  init()
}

/// Represents parsed SmartCard ATR.  Provides routine for parsing byte stream or NSData with binary ATR and accessors to parsed ATR parts.
@available(OSX 10.10, *)
class TKSmartCardATR : NSObject {

  /// Parses ATR from binary data block
  /// @param bytes Data containing full valid ATR
  /// @return Parsed ATR instance, or nil when #bytes do not contain valid ATR.
  init?(bytes: NSData)

  /// Parses ATR from stream.
  /// @param source Provides one byte of ATR from the stream or -1 in case of an error
  /// @return Parsed ATR instance, or nil when #source method failed or an invalid ATR is detected
  init?(source: () -> Int32)

  /// Full ATR as string of bytes
  var bytes: NSData { get }

  /// Array of NSNumber of protocols indicated in ATR, in the correct order (i.e. the default protocol comes first), duplicates sorted out.
  var protocols: [NSNumber] { get }

  /// Retrieves interface group with specified index.
  /// @param index Index of the requested interface group.  Indexing conforms to ISO7816-3, i.e. starts from 1.
  /// @return Interface group with given index, or nil of no such group was present.
  func interfaceGroupAtIndex(index: Int) -> TKSmartCardATRInterfaceGroup?

  /// @param protocol Protocol number for which the interface group is requested.
  func interfaceGroupForProtocol(protocol: TKSmartCardProtocol) -> TKSmartCardATRInterfaceGroup?

  /// Just historical bytes of ATR, without Tck and interface bytes.
  var historicalBytes: NSData { get }
  init()
}
