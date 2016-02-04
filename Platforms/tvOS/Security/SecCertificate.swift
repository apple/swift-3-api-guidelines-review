
@available(tvOS 2.0, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(tvOS 2.0, *)
func SecCertificateCopyData(certificate: SecCertificate) -> CFData
@available(tvOS 2.0, *)
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString
