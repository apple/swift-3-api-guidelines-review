
class CFNetDiagnostic {
}
@available(*, deprecated, renamed="CFNetDiagnostic")
typealias CFNetDiagnosticRef = CFNetDiagnostic
enum CFNetDiagnosticStatusValues : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case NoErr
  case Err
  case ConnectionUp
  case ConnectionIndeterminate
  case ConnectionDown
}
typealias CFNetDiagnosticStatus = CFIndex
@available(OSX 10.4, *)
func CFNetDiagnosticCreateWithStreams(_ alloc: CFAllocator?, _ readStream: CFReadStream?, _ writeStream: CFWriteStream?) -> Unmanaged<CFNetDiagnostic>
@available(OSX 10.4, *)
func CFNetDiagnosticCreateWithURL(_ alloc: CFAllocator, _ url: CFURL) -> Unmanaged<CFNetDiagnostic>
@available(OSX 10.4, *)
func CFNetDiagnosticSetName(_ details: CFNetDiagnostic, _ name: CFString)
@available(OSX 10.4, *)
func CFNetDiagnosticDiagnoseProblemInteractively(_ details: CFNetDiagnostic) -> CFNetDiagnosticStatus
@available(OSX 10.4, *)
func CFNetDiagnosticCopyNetworkStatusPassively(_ details: CFNetDiagnostic, _ description: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFNetDiagnosticStatus
