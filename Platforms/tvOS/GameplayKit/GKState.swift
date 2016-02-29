
@available(tvOS 9.0, *)
class GKState : NSObject {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  func isValidNextState(_ stateClass: AnyClass) -> Bool
  func didEnter(withPreviousState previousState: GKState?)
  func update(withDeltaTime seconds: NSTimeInterval)
  func willExit(withNextState nextState: GKState)
}
