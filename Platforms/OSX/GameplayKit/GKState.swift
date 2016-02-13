
@available(OSX 10.11, *)
class GKState : Object {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  init()
  func isValidNextState(stateClass: AnyClass) -> Bool
  func didEnter(previousState previousState: GKState?)
  func update(deltaTime seconds: TimeInterval)
  func willExit(nextState nextState: GKState)
}
