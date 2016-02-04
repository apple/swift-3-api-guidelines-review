
let undoCloseGroupingRunLoopOrdering: Int
@available(OSX 10.0, *)
class UndoManager : Object {
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
  func removeAllActionsWithTarget(target: AnyObject)
  func registerUndoWithTarget(target: AnyObject, selector: Selector, object anObject: AnyObject?)
  func prepareWithInvocationTarget(target: AnyObject) -> AnyObject
  @available(OSX 10.11, *)
  func __registerUndoWithTarget(target: AnyObject, handler undoHandler: (AnyObject) -> Void)
  @available(OSX 10.7, *)
  func setActionIsDiscardable(discardable: Bool)
  @available(OSX 10.7, *)
  var undoActionIsDiscardable: Bool { get }
  @available(OSX 10.7, *)
  var redoActionIsDiscardable: Bool { get }
  var undoActionName: String { get }
  var redoActionName: String { get }
  func setActionName(actionName: String)
  var undoMenuItemTitle: String { get }
  var redoMenuItemTitle: String { get }
  func undoMenuTitleForUndoActionName(actionName: String) -> String
  func redoMenuTitleForUndoActionName(actionName: String) -> String
  init()
}

extension UndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
@available(OSX 10.7, *)
let undoManagerGroupIsDiscardableKey: String
@available(OSX 10.0, *)
let undoManagerCheckpointNotification: String
@available(OSX 10.0, *)
let undoManagerWillUndoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerWillRedoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerDidUndoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerDidRedoChangeNotification: String
@available(OSX 10.0, *)
let undoManagerDidOpenUndoGroupNotification: String
@available(OSX 10.0, *)
let undoManagerWillCloseUndoGroupNotification: String
@available(OSX 10.7, *)
let undoManagerDidCloseUndoGroupNotification: String
