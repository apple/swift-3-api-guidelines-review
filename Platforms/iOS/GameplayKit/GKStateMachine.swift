
@available(iOS 9.0, *)
class GKStateMachine : NSObject {
  var currentState: GKState? { get }
  init(states: [GKState])
  func updateWithDeltaTime(sec: NSTimeInterval)
  func canEnterState(stateClass: AnyClass) -> Bool
  func enterState(stateClass: AnyClass) -> Bool
  convenience init()
}

@available(iOS 9.0, OSX 10.11, tvOS 9.0, *)
extension GKStateMachine {
  @warn_unused_result
  func stateForClass<StateType : GKState>(stateClass: StateType.Type) -> StateType?
}
