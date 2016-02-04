
@available(OSX 10.11, *)
class GKState : NSObject {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  init()
  func isValidNextState(stateClass: AnyClass) -> Bool
  func didEnterWithPreviousState(previousState: GKState?)
  func updateWithDeltaTime(seconds: NSTimeInterval)
  func willExitWithNextState(nextState: GKState)
}