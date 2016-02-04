
@available(OSX 10.10, *)
func hv_vm_create(flags: hv_vm_options_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vm_destroy() -> hv_return_t
@available(OSX 10.10, *)
func hv_vm_map(uva: hv_uvaddr_t, _ gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vm_unmap(gpa: hv_gpaddr_t, _ size: Int) -> hv_return_t
@available(OSX 10.10, *)
func hv_vm_protect(gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vm_sync_tsc(tsc: UInt64) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_create(vcpu: UnsafeMutablePointer<hv_vcpuid_t>, _ flags: hv_vcpu_options_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_destroy(vcpu: hv_vcpuid_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_read_register(vcpu: hv_vcpuid_t, _ reg: hv_x86_reg_t, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_write_register(vcpu: hv_vcpuid_t, _ reg: hv_x86_reg_t, _ value: UInt64) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_read_fpstate(vcpu: hv_vcpuid_t, _ buffer: UnsafeMutablePointer<Void>, _ size: Int) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_write_fpstate(vcpu: hv_vcpuid_t, _ buffer: UnsafeMutablePointer<Void>, _ size: Int) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_enable_native_msr(vcpu: hv_vcpuid_t, _ msr: UInt32, _ enable: Bool) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_read_msr(vcpu: hv_vcpuid_t, _ msr: UInt32, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_write_msr(vcpu: hv_vcpuid_t, _ msr: UInt32, _ value: UInt64) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_flush(vcpu: hv_vcpuid_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_invalidate_tlb(vcpu: hv_vcpuid_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_run(vcpu: hv_vcpuid_t) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_interrupt(vcpus: UnsafeMutablePointer<hv_vcpuid_t>, _ vcpu_count: UInt32) -> hv_return_t
@available(OSX 10.10, *)
func hv_vcpu_get_exec_time(vcpu: hv_vcpuid_t, _ time: UnsafeMutablePointer<UInt64>) -> hv_return_t
