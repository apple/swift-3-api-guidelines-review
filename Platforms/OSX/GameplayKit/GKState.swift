
@available(OSX 10.11, *)
class GKState : Object {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  init()
  func isValidNextState(stateClass: AnyClass) -> Bool
  func didEnterWithPreviousState(previousState: GKState?)
  func updateWithDeltaTime(seconds: TimeInterval)
  func willExitWithNextState(nextState: GKState)
}
