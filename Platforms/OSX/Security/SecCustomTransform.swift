
enum SecTransformMetaAttributeType : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case value
  case name
  case ref
  case required
  case requiresOutboundConnection
  case deferred
  case stream
  case canCycle
  case externalize
  case hasOutboundConnections
  case hasInboundConnection
}
typealias SecTransformAttribute = CFTypeRef
typealias SecTransformStringOrAttribute = CFTypeRef
typealias SecTransformActionBlock = () -> Unmanaged<CFTypeRef>?
typealias SecTransformAttributeActionBlock = (SecTransformAttribute, CFTypeRef) -> Unmanaged<CFTypeRef>?
typealias SecTransformDataBlock = (CFTypeRef) -> Unmanaged<CFTypeRef>?
typealias SecTransformInstanceBlock = () -> Unmanaged<CFError>?
typealias SecTransformImplementationRef = COpaquePointer
func SecTransformSetAttributeAction(_ ref: SecTransformImplementationRef, _ action: CFString, _ attribute: SecTransformStringOrAttribute?, _ newAction: SecTransformAttributeActionBlock) -> CFError?
func SecTransformSetDataAction(_ ref: SecTransformImplementationRef, _ action: CFString, _ newAction: SecTransformDataBlock) -> CFError?
func SecTransformSetTransformAction(_ ref: SecTransformImplementationRef, _ action: CFString, _ newAction: SecTransformActionBlock) -> CFError?
func SecTransformCustomGetAttribute(_ ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ type: SecTransformMetaAttributeType) -> CFTypeRef?
func SecTransformCustomSetAttribute(_ ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ type: SecTransformMetaAttributeType, _ value: CFTypeRef?) -> CFTypeRef?
func SecTransformPushbackAttribute(_ ref: SecTransformImplementationRef, _ attribute: SecTransformStringOrAttribute, _ value: CFTypeRef) -> CFTypeRef?
typealias SecTransformCreateFP = @convention(c) (CFString, SecTransform, SecTransformImplementationRef) -> SecTransformInstanceBlock
let kSecTransformActionCanExecute: CFString
let kSecTransformActionStartingExecution: CFString
let kSecTransformActionFinalize: CFString
let kSecTransformActionExternalizeExtraData: CFString
let kSecTransformActionProcessData: CFString
let kSecTransformActionInternalizeExtraData: CFString
let kSecTransformActionAttributeNotification: CFString
let kSecTransformActionAttributeValidation: CFString
@available(OSX 10.7, *)
func SecTransformRegister(_ uniqueName: CFString, _ createTransformFunction: SecTransformCreateFP, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.7, *)
func SecTransformCreate(_ name: CFString, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
func SecTransformNoData() -> CFTypeRef
