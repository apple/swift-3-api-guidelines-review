
let undoCloseGroupingRunLoopOrdering: Int
@available(tvOS 3.0, *)
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
  func removeAllActions(withTarget target: AnyObject)
  func registerUndo(withTarget target: AnyObject, selector: Selector, object anObject: AnyObject?)
  func prepare(invocationTarget target: AnyObject) -> AnyObject
  @available(tvOS 9.0, *)
  func __registerUndo(withTarget target: AnyObject, handler undoHandler: (AnyObject) -> Void)
  @available(tvOS 5.0, *)
  func setActionIsDiscardable(discardable: Bool)
  @available(tvOS 5.0, *)
  var undoActionIsDiscardable: Bool { get }
  @available(tvOS 5.0, *)
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

extension UndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
@available(tvOS 5.0, *)
let undoManagerGroupIsDiscardableKey: String
@available(tvOS 3.0, *)
let undoManagerCheckpointNotification: String
@available(tvOS 3.0, *)
let undoManagerWillUndoChangeNotification: String
@available(tvOS 3.0, *)
let undoManagerWillRedoChangeNotification: String
@available(tvOS 3.0, *)
let undoManagerDidUndoChangeNotification: String
@available(tvOS 3.0, *)
let undoManagerDidRedoChangeNotification: String
@available(tvOS 3.0, *)
let undoManagerDidOpenUndoGroupNotification: String
@available(tvOS 3.0, *)
let undoManagerWillCloseUndoGroupNotification: String
@available(tvOS 5.0, *)
let undoManagerDidCloseUndoGroupNotification: String
