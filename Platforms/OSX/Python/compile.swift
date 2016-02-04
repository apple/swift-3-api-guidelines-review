
func PyNode_Compile(_: UnsafeMutablePointer<_node>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyCodeObject>
struct PyFutureFeatures {
  var ff_features: Int32
  var ff_lineno: Int32
  init()
  init(ff_features: Int32, ff_lineno: Int32)
}
var FUTURE_NESTED_SCOPES: String { get }
var FUTURE_GENERATORS: String { get }
var FUTURE_DIVISION: String { get }
var FUTURE_ABSOLUTE_IMPORT: String { get }
var FUTURE_WITH_STATEMENT: String { get }
var FUTURE_PRINT_FUNCTION: String { get }
var FUTURE_UNICODE_LITERALS: String { get }
func PyAST_Compile(_: COpaquePointer, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyCompilerFlags>, _: COpaquePointer) -> UnsafeMutablePointer<PyCodeObject>
func PyFuture_FromAST(_: COpaquePointer, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyFutureFeatures>
