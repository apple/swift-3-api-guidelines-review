
let NSUndoCloseGroupingRunLoopOrdering: Int
@available(watchOS 2.0, *)
class NSUndoManager : NSObject {
  func beginUndoGrouping()
  func endUndoGrouping()
  var groupingLevel: Int { get }
  func disableUndoRegistration()
  func enableUndoRegistration()
  var isUndoRegistrationEnabled: Bool { get }
  var groupsByEvent: Bool
  var levelsOfUndo: Int
  var runLoopModes: [String]
  func undo()
  func redo()
  func undoNestedGroup()
  var canUndo: Bool { get }
  var canRedo: Bool { get }
  var isUndoing: Bool { get }
  var isRedoing: Bool { get }
  func removeAllActions()
  func removeAllActions(target target: AnyObject)
  func registerUndo(target target: AnyObject, selector: Selector, object anObject: AnyObject?)
  func prepare(invocationTarget target: AnyObject) -> AnyObject
  @available(watchOS 2.0, *)
  func __registerUndo(target target: AnyObject, handler undoHandler: (AnyObject) -> Void)
  @available(watchOS 2.0, *)
  func setActionIsDiscardable(discardable: Bool)
  @available(watchOS 2.0, *)
  var undoActionIsDiscardable: Bool { get }
  @available(watchOS 2.0, *)
  var redoActionIsDiscardable: Bool { get }
  var undoActionName: String { get }
  var redoActionName: String { get }
  func setActionName(actionName: String)
  var undoMenuItemTitle: String { get }
  var redoMenuItemTitle: String { get }
  func undoMenuTitle(forUndoActionName actionName: String) -> String
  func redoMenuTitle(forUndoActionName actionName: String) -> String
  init()
}

extension NSUndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
@available(watchOS 2.0, *)
let NSUndoManagerGroupIsDiscardableKey: String
@available(watchOS 2.0, *)
let NSUndoManagerCheckpointNotification: String
@available(watchOS 2.0, *)
let NSUndoManagerWillUndoChangeNotification: String
@available(watchOS 2.0, *)
let NSUndoManagerWillRedoChangeNotification: String
@available(watchOS 2.0, *)
let NSUndoManagerDidUndoChangeNotification: String
@available(watchOS 2.0, *)
let NSUndoManagerDidRedoChangeNotification: String
@available(watchOS 2.0, *)
let NSUndoManagerDidOpenUndoGroupNotification: String
@available(watchOS 2.0, *)
let NSUndoManagerWillCloseUndoGroupNotification: String
@available(watchOS 2.0, *)
let NSUndoManagerDidCloseUndoGroupNotification: String
