
class ProtocolChecker : Proxy {
  var `protocol`: Protocol { get }
  var target: Object? { get }
}
extension ProtocolChecker {
  init(target anObject: Object, protocol aProtocol: Protocol)
}
