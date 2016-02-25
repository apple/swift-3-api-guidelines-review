
@available(iOS 9.0, *)
class GKState : NSObject {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  func isValidNextState(_ stateClass: AnyClass) -> Bool
  func didEnterWithPreviousState(_ previousState: GKState?)
  func updateWithDeltaTime(_ seconds: NSTimeInterval)
  func willExitWithNextState(_ nextState: GKState)
}
