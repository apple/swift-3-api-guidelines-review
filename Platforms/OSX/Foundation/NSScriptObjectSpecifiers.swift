
var noSpecifierError: Int { get }
var noTopLevelContainersSpecifierError: Int { get }
var containerSpecifierError: Int { get }
var unknownKeySpecifierError: Int { get }
var invalidIndexSpecifierError: Int { get }
var internalSpecifierError: Int { get }
var operationNotSupportedForKeySpecifierError: Int { get }
enum InsertionPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PositionAfter
  case PositionBefore
  case PositionBeginning
  case PositionEnd
  case PositionReplace
}
enum RelativePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case After
  case Before
}
enum WhoseSubelementIdentifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IndexSubelement
  case EverySubelement
  case MiddleSubelement
  case RandomSubelement
  case NoSubelement
}
class ScriptObjectSpecifier : Object, Coding {
  @available(OSX 10.5, *)
  /*not inherited*/ init?(descriptor: AppleEventDescriptor)
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  unowned(unsafe) var child: @sil_unmanaged ScriptObjectSpecifier?
  var container: ScriptObjectSpecifier?
  var containerIsObjectBeingTested: Bool
  var containerIsRangeContainerObject: Bool
  var key: String
  var containerClassDescription: ScriptClassDescription?
  var keyClassDescription: ScriptClassDescription? { get }
  func indicesOfObjectsByEvaluatingWith(container container: AnyObject, count: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Int>
  func objectsByEvaluatingWith(containers containers: AnyObject) -> AnyObject?
  var objectsByEvaluatingSpecifier: AnyObject? { get }
  var evaluationErrorNumber: Int
  var evaluationError: ScriptObjectSpecifier? { get }
  @available(OSX 10.5, *)
  @NSCopying var descriptor: AppleEventDescriptor? { get }
  convenience init()
  func encodeWith(aCoder: Coder)
}
extension Object {
  var objectSpecifier: ScriptObjectSpecifier? { get }
  class func indicesOfObjectsBy(evaluatingObjectSpecifier specifier: ScriptObjectSpecifier) -> [Number]?
  func indicesOfObjectsBy(evaluatingObjectSpecifier specifier: ScriptObjectSpecifier) -> [Number]?
  class func objectSpecifier() -> ScriptObjectSpecifier?
}
class IndexSpecifier : ScriptObjectSpecifier {
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, index: Int)
  var index: Int
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class MiddleSpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class NameSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, name: String)
  var name: String
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class PositionalSpecifier : Object {
  init(position: InsertionPosition, objectSpecifier specifier: ScriptObjectSpecifier)
  @available(OSX 10.5, *)
  var position: InsertionPosition { get }
  @available(OSX 10.5, *)
  var objectSpecifier: ScriptObjectSpecifier { get }
  func setInsertionClassDescription(classDescription: ScriptClassDescription)
  func evaluate()
  var insertionContainer: AnyObject? { get }
  var insertionKey: String? { get }
  var insertionIndex: Int { get }
  var insertionReplaces: Bool { get }
  convenience init()
}
class PropertySpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class RandomSpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class RangeSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, start startSpec: ScriptObjectSpecifier?, end endSpec: ScriptObjectSpecifier?)
  var startSpecifier: ScriptObjectSpecifier?
  var endSpecifier: ScriptObjectSpecifier?
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class RelativeSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, relativePosition relPos: RelativePosition, baseSpecifier: ScriptObjectSpecifier?)
  var relativePosition: RelativePosition
  var baseSpecifier: ScriptObjectSpecifier?
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class UniqueIDSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, uniqueID: AnyObject)
  @NSCopying var uniqueID: AnyObject
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
class WhoseSpecifier : ScriptObjectSpecifier {
  init?(coder inCoder: Coder)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String, test: ScriptWhoseTest)
  var test: ScriptWhoseTest
  var startSubelementIdentifier: WhoseSubelementIdentifier
  var startSubelementIndex: Int
  var endSubelementIdentifier: WhoseSubelementIdentifier
  var endSubelementIndex: Int
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  convenience init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  convenience init()
}
