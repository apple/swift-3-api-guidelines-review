
let kSecTransformErrorDomain: CFString
let kSecTransformPreviousErrorKey: CFString
let kSecTransformAbortOriginatorKey: CFString
var kSecTransformErrorAttributeNotFound: CFIndex { get }
var kSecTransformErrorInvalidOperation: CFIndex { get }
var kSecTransformErrorNotInitializedCorrectly: CFIndex { get }
var kSecTransformErrorMoreThanOneOutput: CFIndex { get }
var kSecTransformErrorInvalidInputDictionary: CFIndex { get }
var kSecTransformErrorInvalidAlgorithm: CFIndex { get }
var kSecTransformErrorInvalidLength: CFIndex { get }
var kSecTransformErrorInvalidType: CFIndex { get }
var kSecTransformErrorInvalidInput: CFIndex { get }
var kSecTransformErrorNameAlreadyRegistered: CFIndex { get }
var kSecTransformErrorUnsupportedAttribute: CFIndex { get }
var kSecTransformOperationNotSupportedOnGroup: CFIndex { get }
var kSecTransformErrorMissingParameter: CFIndex { get }
var kSecTransformErrorInvalidConnection: CFIndex { get }
var kSecTransformTransformIsExecuting: CFIndex { get }
var kSecTransformInvalidOverride: CFIndex { get }
var kSecTransformTransformIsNotRegistered: CFIndex { get }
var kSecTransformErrorAbortInProgress: CFIndex { get }
var kSecTransformErrorAborted: CFIndex { get }
var kSecTransformInvalidArgument: CFIndex { get }
typealias SecTransform = CFTypeRef
@available(*, deprecated, renamed="SecTransform")
typealias SecTransformRef = SecTransform
typealias SecGroupTransform = CFTypeRef
@available(*, deprecated, renamed="SecGroupTransform")
typealias SecGroupTransformRef = SecGroupTransform
func SecTransformGetTypeID() -> CFTypeID
func SecGroupTransformGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
let kSecTransformInputAttributeName: CFString
@available(OSX 10.7, *)
let kSecTransformOutputAttributeName: CFString
@available(OSX 10.7, *)
let kSecTransformDebugAttributeName: CFString
@available(OSX 10.7, *)
let kSecTransformTransformName: CFString
@available(OSX 10.7, *)
let kSecTransformAbortAttributeName: CFString
@available(OSX 10.7, *)
func SecTransformCreateFromExternalRepresentation(dictionary: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
@available(OSX 10.7, *)
func SecTransformCopyExternalRepresentation(transformRef: SecTransform) -> CFDictionary
func SecTransformCreateGroupTransform() -> SecGroupTransform
@available(OSX 10.7, *)
func SecTransformConnectTransforms(sourceTransformRef: SecTransform, _ sourceAttributeName: CFString, _ destinationTransformRef: SecTransform, _ destinationAttributeName: CFString, _ group: SecGroupTransform, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecGroupTransform?
@available(OSX 10.7, *)
func SecTransformSetAttribute(transformRef: SecTransform, _ key: CFString, _ value: CFTypeRef, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.7, *)
func SecTransformGetAttribute(transformRef: SecTransform, _ key: CFString) -> CFTypeRef?
@available(OSX 10.7, *)
func SecTransformFindByName(transform: SecGroupTransform, _ name: CFString) -> SecTransform?
@available(OSX 10.7, *)
func SecTransformExecute(transformRef: SecTransform, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFTypeRef
typealias SecMessageBlock = (CFTypeRef?, CFError?, Bool) -> Void
@available(OSX 10.7, *)
func SecTransformExecuteAsync(transformRef: SecTransform, _ deliveryQueue: dispatch_queue_t, _ deliveryBlock: SecMessageBlock)
