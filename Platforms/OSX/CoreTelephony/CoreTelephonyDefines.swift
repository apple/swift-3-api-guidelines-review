
var kCTErrorDomainNoError: Int { get }
var kCTErrorDomainPOSIX: Int { get }
var kCTErrorDomainMach: Int { get }
struct CTError {
  var domain: Int32
  var error: Int32
  init()
  init(domain: Int32, error: Int32)
}
