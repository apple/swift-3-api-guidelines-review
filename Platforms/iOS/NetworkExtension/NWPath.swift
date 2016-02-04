
@available(iOS 9.0, *)
enum NWPathStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Satisfied
  case Unsatisfied
  case Satisfiable
}
@available(iOS 9.0, *)
class NWPath : NSObject {
  @available(iOS 9.0, *)
  var status: NWPathStatus { get }
  @available(iOS 9.0, *)
  var expensive: Bool { get }
  @available(iOS 9.0, *)
  func isEqualToPath(path: NWPath) -> Bool
  init()
}
