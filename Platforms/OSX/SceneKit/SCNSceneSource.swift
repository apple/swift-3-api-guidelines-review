
let SCNSceneSourceAssetContributorsKey: String
let SCNSceneSourceAssetCreatedDateKey: String
let SCNSceneSourceAssetModifiedDateKey: String
let SCNSceneSourceAssetUpAxisKey: String
let SCNSceneSourceAssetUnitKey: String
let SCNSceneSourceAssetAuthoringToolKey: String
let SCNSceneSourceAssetAuthorKey: String
let SCNSceneSourceAssetUnitNameKey: String
let SCNSceneSourceAssetUnitMeterKey: String
let SCNSceneSourceCreateNormalsIfAbsentKey: String
let SCNSceneSourceCheckConsistencyKey: String
let SCNSceneSourceFlattenSceneKey: String
let SCNSceneSourceUseSafeModeKey: String
let SCNSceneSourceAssetDirectoryURLsKey: String
let SCNSceneSourceOverrideAssetURLsKey: String
let SCNSceneSourceStrictConformanceKey: String
@available(OSX 10.10, *)
let SCNSceneSourceConvertUnitsToMetersKey: String
@available(OSX 10.10, *)
let SCNSceneSourceConvertToYUpKey: String
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyKey: String
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyPlay: String
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyPlayRepeatedly: String
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyDoNotPlay: String
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyPlayUsingSceneTimeBase: String
let SCNDetailedErrorsKey: String
let SCNConsistencyElementIDErrorKey: String
let SCNConsistencyElementTypeErrorKey: String
let SCNConsistencyLineNumberErrorKey: String
var SCNConsistencyInvalidURIError: Int { get }
var SCNConsistencyInvalidCountError: Int { get }
var SCNConsistencyInvalidArgumentError: Int { get }
var SCNConsistencyMissingElementError: Int { get }
var SCNConsistencyMissingAttributeError: Int { get }
var SCNConsistencyXMLSchemaValidationError: Int { get }
enum SCNSceneSourceStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case error
  case parsing
  case validating
  case processing
  case complete
}
typealias SCNSceneSourceStatusHandler = (Float, SCNSceneSourceStatus, Error?, UnsafeMutablePointer<ObjCBool>) -> Void
@available(OSX 10.8, *)
class SCNSceneSource : Object {
  init?(url: URL, options: [String : AnyObject]? = [:])
  init?(data: Data, options: [String : AnyObject]? = [:])
  var url: URL? { get }
  var data: Data? { get }
  func sceneWith(options options: [String : AnyObject]? = [:], statusHandler: SCNSceneSourceStatusHandler? = nil) -> SCNScene?
  func sceneWith(options options: [String : AnyObject]? = [:]) throws -> SCNScene
  func propertyFor(key key: String) -> AnyObject?
  func __entryWith(identifier uid: String, withClass entryClass: AnyClass) -> AnyObject?
  func identifiersOfEntriesWith(entryClass: AnyClass) -> [String]
  @available(OSX 10.9, *)
  func entriesPassingTest(predicate: (AnyObject, String, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [AnyObject]
  init()
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNSceneSource {
  @warn_unused_result
  func entryWithIdentifier<T>(uid: String, withClass entryClass: T.Type) -> T?
}
