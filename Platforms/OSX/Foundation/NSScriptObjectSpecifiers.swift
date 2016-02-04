
var NSNoSpecifierError: Int { get }
var NSNoTopLevelContainersSpecifierError: Int { get }
var NSContainerSpecifierError: Int { get }
var NSUnknownKeySpecifierError: Int { get }
var NSInvalidIndexSpecifierError: Int { get }
var NSInternalSpecifierError: Int { get }
var NSOperationNotSupportedForKeySpecifierError: Int { get }
enum NSInsertionPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PositionAfter
  case PositionBefore
  case PositionBeginning
  case PositionEnd
  case PositionReplace
}
enum NSRelativePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case After
  case Before
}
enum NSWhoseSubelementIdentifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IndexSubelement
  case EverySubelement
  case MiddleSubelement
  case RandomSubelement
  case NoSubelement
}
class NSScriptObjectSpecifier : NSObject, NSCoding {
  @available(OSX 10.5, *)
  /*not inherited*/ init?(descriptor: NSAppleEventDescriptor)
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  unowned(unsafe) var childSpecifier: @sil_unmanaged NSScriptObjectSpecifier?
  var containerSpecifier: NSScriptObjectSpecifier?
  var containerIsObjectBeingTested: Bool
  var containerIsRangeContainerObject: Bool
  var key: String
  var containerClassDescription: NSScriptClassDescription?
  var keyClassDescription: NSScriptClassDescription? { get }
  func indicesOfObjectsByEvaluatingWithContainer(container: AnyObject, count: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Int>
  func objectsByEvaluatingWithContainers(containers: AnyObject) -> AnyObject?
  var objectsByEvaluatingSpecifier: AnyObject? { get }
  var evaluationErrorNumber: Int
  var evaluationErrorSpecifier: NSScriptObjectSpecifier? { get }
  @available(OSX 10.5, *)
  @NSCopying var descriptor: NSAppleEventDescriptor? { get }
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSObject {
  var objectSpecifier: NSScriptObjectSpecifier? { get }
  class func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  func indicesOfObjectsByEvaluatingObjectSpecifier(specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  class func objectSpecifier() -> NSScriptObjectSpecifier?
}
class NSIndexSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, index: Int)
  var index: Int
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSMiddleSpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSNameSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, name: String)
  var name: String
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSPositionalSpecifier : NSObject {
  init(position: NSInsertionPosition, objectSpecifier specifier: NSScriptObjectSpecifier)
  @available(OSX 10.5, *)
  var position: NSInsertionPosition { get }
  @available(OSX 10.5, *)
  var objectSpecifier: NSScriptObjectSpecifier { get }
  func setInsertionClassDescription(classDescription: NSScriptClassDescription)
  func evaluate()
  var insertionContainer: AnyObject? { get }
  var insertionKey: String? { get }
  var insertionIndex: Int { get }
  var insertionReplaces: Bool { get }
  convenience init()
}
class NSPropertySpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSRandomSpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSRangeSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, startSpecifier startSpec: NSScriptObjectSpecifier?, endSpecifier endSpec: NSScriptObjectSpecifier?)
  var startSpecifier: NSScriptObjectSpecifier?
  var endSpecifier: NSScriptObjectSpecifier?
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSRelativeSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, relativePosition relPos: NSRelativePosition, baseSpecifier: NSScriptObjectSpecifier?)
  var relativePosition: NSRelativePosition
  var baseSpecifier: NSScriptObjectSpecifier?
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSUniqueIDSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, uniqueID: AnyObject)
  @NSCopying var uniqueID: AnyObject
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
class NSWhoseSpecifier : NSScriptObjectSpecifier {
  init?(coder inCoder: NSCoder)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, test: NSScriptWhoseTest)
  var test: NSScriptWhoseTest
  var startSubelementIdentifier: NSWhoseSubelementIdentifier
  var startSubelementIndex: Int
  var endSubelementIdentifier: NSWhoseSubelementIdentifier
  var endSubelementIndex: Int
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  convenience init()
}
