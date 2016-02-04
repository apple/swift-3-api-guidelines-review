
class CFNetDiagnostic {
}
@available(*, deprecated, renamed="CFNetDiagnostic")
typealias CFNetDiagnosticRef = CFNetDiagnostic
enum CFNetDiagnosticStatusValues : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NoErr
  case Err
  case ConnectionUp
  case ConnectionIndeterminate
  case ConnectionDown
}
typealias CFNetDiagnosticStatus = CFIndex
@available(tvOS 2.0, *)
func CFNetDiagnosticCreateWithStreams(alloc: CFAllocator?, _ readStream: CFReadStream?, _ writeStream: CFWriteStream?) -> Unmanaged<CFNetDiagnostic>
@available(tvOS 2.0, *)
func CFNetDiagnosticCreateWithURL(alloc: CFAllocator, _ url: CFURL) -> Unmanaged<CFNetDiagnostic>
@available(tvOS 2.0, *)
func CFNetDiagnosticSetName(details: CFNetDiagnostic, _ name: CFString)
@available(tvOS 2.0, *)
func CFNetDiagnosticDiagnoseProblemInteractively(details: CFNetDiagnostic) -> CFNetDiagnosticStatus
@available(tvOS 2.0, *)
func CFNetDiagnosticCopyNetworkStatusPassively(details: CFNetDiagnostic, _ description: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFNetDiagnosticStatus
