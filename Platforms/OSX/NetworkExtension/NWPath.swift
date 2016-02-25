
@available(OSX 10.11, *)
enum NWPathStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Satisfied
  case Unsatisfied
  case Satisfiable
}
@available(OSX 10.11, *)
class NWPath : NSObject {
  @available(OSX 10.11, *)
  var status: NWPathStatus { get }
  @available(OSX 10.11, *)
  var expensive: Bool { get }
  @available(OSX 10.11, *)
  func isEqualToPath(_ path: NWPath) -> Bool
}
