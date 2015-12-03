

/*!
 * @function   hv_vm_create
 * @abstract   Creates a VM instance for the current task
 * @param      flags  RESERVED
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vm_create(flags: hv_vm_options_t) -> hv_return_t

/*!
 * @function   hv_vm_destroy
 * @abstract   Destroys the VM instance associated with the current task
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vm_destroy() -> hv_return_t

/*!
 * @function   hv_vm_map
 * @abstract   Maps a region in the virtual address space of the current task
 *             into the guest physical address space of the VM
 * @param      uva    Page aligned virtual address in the current task
 * @param      gpa    Page aligned address in the guest physical address space
 * @param      size   Size in bytes of the region to be mapped
 * @param      flags  READ, WRITE and EXECUTE permissions of the region
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vm_map(uva: hv_uvaddr_t, _ gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t

/*!
 * @function   hv_vm_unmap
 * @abstract   Unmaps a region in the guest physical address space of the VM
 * @param      gpa   Page aligned address in the guest physical address space
 * @param      size  Size in bytes of the region to be unmapped
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vm_unmap(gpa: hv_gpaddr_t, _ size: Int) -> hv_return_t

/*!
 * @function   hv_vm_protect
 * @abstract   Modifies the permissions of a region in the guest physical
 *             address space of the VM
 * @param      gpa   Page aligned address in the guest physical address space
 * @param      size  Size in bytes of the region to be modified
 * @param      flags New READ, WRITE and EXECUTE permissions of the region
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vm_protect(gpa: hv_gpaddr_t, _ size: Int, _ flags: hv_memory_flags_t) -> hv_return_t

/*!
 * @function   hv_vm_sync_tsc
 * @abstract   Synchronizes guest TSC across all vCPUs
 * @param      tsc  Guest TSC value
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vm_sync_tsc(tsc: UInt64) -> hv_return_t

/*!
 * @function   hv_vcpu_create
 * @abstract   Creates a vCPU instance for the current thread
 * @param      vcpu   Pointer to the vCPU ID (written on success)
 * @param      flags  RESERVED
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vcpu_create(vcpu: UnsafeMutablePointer<hv_vcpuid_t>, _ flags: hv_vcpu_options_t) -> hv_return_t

/*!
 * @function   hv_vcpu_destroy
 * @abstract   Destroys the vCPU instance associated with the current thread
 * @param      vcpu  vCPU ID
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_destroy(vcpu: hv_vcpuid_t) -> hv_return_t

/*!
 * @function   hv_vcpu_read_register
 * @abstract   Returns the current value of an architectural x86 register
 *             of a vCPU
 * @param      vcpu   vCPU ID
 * @param      reg    ID of the register to be read
 * @param      value  Pointer to the register value (written on success)
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_read_register(vcpu: hv_vcpuid_t, _ reg: hv_x86_reg_t, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t

/*!
 * @function   hv_vcpu_write_register
 * @abstract   Set the value of an architectural x86 register of a vCPU
 * @param      vcpu   vCPU ID
 * @param      reg    ID of the register to be written
 * @param      value  Value of the register to be written
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_write_register(vcpu: hv_vcpuid_t, _ reg: hv_x86_reg_t, _ value: UInt64) -> hv_return_t

/*!
 * @function   hv_vcpu_read_fpstate
 * @abstract   Returns the current architectural x86 floating point and
 *             SIMD state of a vCPU
 * @param      vcpu    vCPU ID
 * @param      buffer  Pointer to a memory buffer (written on success)
 * @param      size    Size of the memory buffer in bytes
 * @result     0 on success or error code
 * @discussion
 *             Structure and size are defined by the XSAVE feature set of
 *             the host processor
 *
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_read_fpstate(vcpu: hv_vcpuid_t, _ buffer: UnsafeMutablePointer<Void>, _ size: Int) -> hv_return_t

/*!
 * @function   hv_vcpu_write_fpstate
 * @abstract   Sets the architectural x86 floating point and SIMD state of
 *             a vCPU
 * @param      vcpu    vCPU ID
 * @param      buffer  Pointer to a memory buffer holding the state
 *                     to be written
 * @param      size    Size of the memory buffer in bytes
 * @result     0 on success or error code
 * @discussion
 *             Structure and size are defined by the XSAVE feature set of
 *             the host processor
 *
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_write_fpstate(vcpu: hv_vcpuid_t, _ buffer: UnsafeMutablePointer<Void>, _ size: Int) -> hv_return_t

/*!
 * @function   hvvcpu_enable_native_msr
 * @abstract   Enables an MSR to be used natively by the VM
 * @param      vcpu    vCPU ID
 * @param      msr     ID of the MSR
 * @param      enable  Enable or disable the native use of the MSR
 * @result     0 on success or error code
 * @discussion
 *             See Documentation for a list of supported MSRs
 *
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_enable_native_msr(vcpu: hv_vcpuid_t, _ msr: UInt32, _ enable: Bool) -> hv_return_t

/*!
 * @function   hv_vcpu_read_msr
 * @abstract   Returns the current value of an MSR of a vCPU
 * @param      vcpu   vCPU ID
 * @param      msr    ID of the MSR to be read
 * @param      value  Pointer to the MSR value (written on success)
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_read_msr(vcpu: hv_vcpuid_t, _ msr: UInt32, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t

/*!
 * @function   hv_vcpu_write_msr
 * @abstract   Set the value of an MSR of a vCPU
 * @param      vcpu   vCPU ID
 * @param      msr    ID of the MSR to be written
 * @param      value  Value of the MSR to be written
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_write_msr(vcpu: hv_vcpuid_t, _ msr: UInt32, _ value: UInt64) -> hv_return_t

/*!
 * @function   hv_vcpu_flush
 * @abstract   Forces flushing of cached vCPU state
 * @param      vcpu  vCPU ID
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_flush(vcpu: hv_vcpuid_t) -> hv_return_t

/*!
 * @function   hv_vcpu_invalidate_tlb
 * @abstract   Invalidates the TLB of a vCPU
 * @param      vcpu  vCPU ID
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_invalidate_tlb(vcpu: hv_vcpuid_t) -> hv_return_t

/*!
 * @function   hv_vcpu_run
 * @abstract   Executes a vCPU
 * @param      vcpu  vCPU ID
 * @result     0 on success or error code
 * @discussion
 *             Call blocks until the next VMEXIT of the vCPU
 *
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vcpu_run(vcpu: hv_vcpuid_t) -> hv_return_t

/*!
 * @function   hv_vcpu_interrupt
 * @abstract   Forces an immediate VMEXIT of a set of vCPUs of the VM
 * @param      vcpus       Pointer to a list of vCPU IDs
 * @param      vcpu_count  Number of vCPUs in the list
 * @result     0 on success or error code
 */
@available(OSX 10.10, *)
func hv_vcpu_interrupt(vcpus: UnsafeMutablePointer<hv_vcpuid_t>, _ vcpu_count: UInt32) -> hv_return_t

/*!
 * @function   hv_vcpu_get_exec_time
 * @abstract   Returns the cumulative execution time of a vCPU in nanoseconds
 * @param      vcpu  vCPU ID
 * @param      time  Pointer to execution time value (written on success)
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread!
 */
@available(OSX 10.10, *)
func hv_vcpu_get_exec_time(vcpu: hv_vcpuid_t, _ time: UnsafeMutablePointer<UInt64>) -> hv_return_t
var VMCS_VPID: Int { get }
var VMCS_CTRL_POSTED_INT_N_VECTOR: Int { get }
var VMCS_CTRL_EPTP_INDEX: Int { get }
var VMCS_GUEST_ES: Int { get }
var VMCS_GUEST_CS: Int { get }
var VMCS_GUEST_SS: Int { get }
var VMCS_GUEST_DS: Int { get }
var VMCS_GUEST_FS: Int { get }
var VMCS_GUEST_GS: Int { get }
var VMCS_GUEST_LDTR: Int { get }
var VMCS_GUEST_TR: Int { get }
var VMCS_GUEST_INT_STATUS: Int { get }
var VMCS_HOST_ES: Int { get }
var VMCS_HOST_CS: Int { get }
var VMCS_HOST_SS: Int { get }
var VMCS_HOST_DS: Int { get }
var VMCS_HOST_FS: Int { get }
var VMCS_HOST_GS: Int { get }
var VMCS_HOST_TR: Int { get }
var VMCS_CTRL_IO_BITMAP_A: Int { get }
var VMCS_CTRL_IO_BITMAP_B: Int { get }
var VMCS_CTRL_MSR_BITMAPS: Int { get }
var VMCS_CTRL_VMEXIT_MSR_STORE_ADDR: Int { get }
var VMCS_CTRL_VMEXIT_MSR_LOAD_ADDR: Int { get }
var VMCS_CTRL_VMENTRY_MSR_LOAD_ADDR: Int { get }
var VMCS_CTRL_EXECUTIVE_VMCS_PTR: Int { get }
var VMCS_CTRL_TSC_OFFSET: Int { get }
var VMCS_CTRL_VIRTUAL_APIC: Int { get }
var VMCS_CTRL_APIC_ACCESS: Int { get }
var VMCS_CTRL_POSTED_INT_DESC_ADDR: Int { get }
var VMCS_CTRL_VMFUNC_CTRL: Int { get }
var VMCS_CTRL_EPTP: Int { get }
var VMCS_CTRL_EOI_EXIT_BITMAP_0: Int { get }
var VMCS_CTRL_EOI_EXIT_BITMAP_1: Int { get }
var VMCS_CTRL_EOI_EXIT_BITMAP_2: Int { get }
var VMCS_CTRL_EOI_EXIT_BITMAP_3: Int { get }
var VMCS_CTRL_EPTP_LIST_ADDR: Int { get }
var VMCS_CTRL_VMREAD_BITMAP_ADDR: Int { get }
var VMCS_CTRL_VMWRITE_BITMAP_ADDR: Int { get }
var VMCS_CTRL_VIRT_EXC_INFO_ADDR: Int { get }
var VMCS_CTRL_XSS_EXITING_BITMAP: Int { get }
var VMCS_GUEST_PHYSICAL_ADDRESS: Int { get }
var VMCS_GUEST_LINK_POINTER: Int { get }
var VMCS_GUEST_IA32_DEBUGCTL: Int { get }
var VMCS_GUEST_IA32_PAT: Int { get }
var VMCS_GUEST_IA32_EFER: Int { get }
var VMCS_GUEST_IA32_PERF_GLOBAL_CTRL: Int { get }
var VMCS_GUEST_PDPTE0: Int { get }
var VMCS_GUEST_PDPTE1: Int { get }
var VMCS_GUEST_PDPTE2: Int { get }
var VMCS_GUEST_PDPTE3: Int { get }
var VMCS_HOST_IA32_PAT: Int { get }
var VMCS_HOST_IA32_EFER: Int { get }
var VMCS_HOST_IA32_PERF_GLOBAL_CTRL: Int { get }
var VMCS_CTRL_PIN_BASED: Int { get }
var VMCS_CTRL_CPU_BASED: Int { get }
var VMCS_CTRL_EXC_BITMAP: Int { get }
var VMCS_CTRL_PF_ERROR_MASK: Int { get }
var VMCS_CTRL_PF_ERROR_MATCH: Int { get }
var VMCS_CTRL_CR3_COUNT: Int { get }
var VMCS_CTRL_VMEXIT_CONTROLS: Int { get }
var VMCS_CTRL_VMEXIT_MSR_STORE_COUNT: Int { get }
var VMCS_CTRL_VMEXIT_MSR_LOAD_COUNT: Int { get }
var VMCS_CTRL_VMENTRY_CONTROLS: Int { get }
var VMCS_CTRL_VMENTRY_MSR_LOAD_COUNT: Int { get }
var VMCS_CTRL_VMENTRY_IRQ_INFO: Int { get }
var VMCS_CTRL_VMENTRY_EXC_ERROR: Int { get }
var VMCS_CTRL_VMENTRY_INSTR_LEN: Int { get }
var VMCS_CTRL_TPR_THRESHOLD: Int { get }
var VMCS_CTRL_CPU_BASED2: Int { get }
var VMCS_CTRL_PLE_GAP: Int { get }
var VMCS_CTRL_PLE_WINDOW: Int { get }
var VMCS_RO_INSTR_ERROR: Int { get }
var VMCS_RO_EXIT_REASON: Int { get }
var VMCS_RO_VMEXIT_IRQ_INFO: Int { get }
var VMCS_RO_VMEXIT_IRQ_ERROR: Int { get }
var VMCS_RO_IDT_VECTOR_INFO: Int { get }
var VMCS_RO_IDT_VECTOR_ERROR: Int { get }
var VMCS_RO_VMEXIT_INSTR_LEN: Int { get }
var VMCS_RO_VMX_INSTR_INFO: Int { get }
var VMCS_GUEST_ES_LIMIT: Int { get }
var VMCS_GUEST_CS_LIMIT: Int { get }
var VMCS_GUEST_SS_LIMIT: Int { get }
var VMCS_GUEST_DS_LIMIT: Int { get }
var VMCS_GUEST_FS_LIMIT: Int { get }
var VMCS_GUEST_GS_LIMIT: Int { get }
var VMCS_GUEST_LDTR_LIMIT: Int { get }
var VMCS_GUEST_TR_LIMIT: Int { get }
var VMCS_GUEST_GDTR_LIMIT: Int { get }
var VMCS_GUEST_IDTR_LIMIT: Int { get }
var VMCS_GUEST_ES_AR: Int { get }
var VMCS_GUEST_CS_AR: Int { get }
var VMCS_GUEST_SS_AR: Int { get }
var VMCS_GUEST_DS_AR: Int { get }
var VMCS_GUEST_FS_AR: Int { get }
var VMCS_GUEST_GS_AR: Int { get }
var VMCS_GUEST_LDTR_AR: Int { get }
var VMCS_GUEST_TR_AR: Int { get }
var VMCS_GUEST_IGNORE_IRQ: Int { get }
var VMCS_GUEST_ACTIVITY_STATE: Int { get }
var VMCS_GUEST_SMBASE: Int { get }
var VMCS_GUEST_IA32_SYSENTER_CS: Int { get }
var VMCS_GUEST_VMX_TIMER_VALUE: Int { get }
var VMCS_HOST_IA32_SYSENTER_CS: Int { get }
var VMCS_CTRL_CR0_MASK: Int { get }
var VMCS_CTRL_CR4_MASK: Int { get }
var VMCS_CTRL_CR0_SHADOW: Int { get }
var VMCS_CTRL_CR4_SHADOW: Int { get }
var VMCS_CTRL_CR3_VALUE0: Int { get }
var VMCS_CTRL_CR3_VALUE1: Int { get }
var VMCS_CTRL_CR3_VALUE2: Int { get }
var VMCS_CTRL_CR3_VALUE3: Int { get }
var VMCS_RO_EXIT_QUALIFIC: Int { get }
var VMCS_RO_IO_RCX: Int { get }
var VMCS_RO_IO_RSI: Int { get }
var VMCS_RO_IO_RDI: Int { get }
var VMCS_RO_IO_RIP: Int { get }
var VMCS_RO_GUEST_LIN_ADDR: Int { get }
var VMCS_GUEST_CR0: Int { get }
var VMCS_GUEST_CR3: Int { get }
var VMCS_GUEST_CR4: Int { get }
var VMCS_GUEST_ES_BASE: Int { get }
var VMCS_GUEST_CS_BASE: Int { get }
var VMCS_GUEST_SS_BASE: Int { get }
var VMCS_GUEST_DS_BASE: Int { get }
var VMCS_GUEST_FS_BASE: Int { get }
var VMCS_GUEST_GS_BASE: Int { get }
var VMCS_GUEST_LDTR_BASE: Int { get }
var VMCS_GUEST_TR_BASE: Int { get }
var VMCS_GUEST_GDTR_BASE: Int { get }
var VMCS_GUEST_IDTR_BASE: Int { get }
var VMCS_GUEST_DR7: Int { get }
var VMCS_GUEST_RSP: Int { get }
var VMCS_GUEST_RIP: Int { get }
var VMCS_GUEST_RFLAGS: Int { get }
var VMCS_GUEST_DEBUG_EXC: Int { get }
var VMCS_GUEST_SYSENTER_ESP: Int { get }
var VMCS_GUEST_SYSENTER_EIP: Int { get }
var VMCS_HOST_CR0: Int { get }
var VMCS_HOST_CR3: Int { get }
var VMCS_HOST_CR4: Int { get }
var VMCS_HOST_FS_BASE: Int { get }
var VMCS_HOST_GS_BASE: Int { get }
var VMCS_HOST_TR_BASE: Int { get }
var VMCS_HOST_GDTR_BASE: Int { get }
var VMCS_HOST_IDTR_BASE: Int { get }
var VMCS_HOST_IA32_SYSENTER_ESP: Int { get }
var VMCS_HOST_IA32_SYSENTER_EIP: Int { get }
var VMCS_HOST_RSP: Int { get }
var VMCS_HOST_RIP: Int { get }
var VMCS_MAX: Int { get }
var VMX_BASIC_TRUE_CTLS: UInt { get }
var PIN_BASED_INTR: UInt32 { get }
var PIN_BASED_NMI: UInt32 { get }
var PIN_BASED_VIRTUAL_NMI: UInt32 { get }
var PIN_BASED_PREEMPTION_TIMER: UInt32 { get }
var PIN_BASED_POSTED_INTR: UInt32 { get }
var CPU_BASED_IRQ_WND: UInt32 { get }
var CPU_BASED_TSC_OFFSET: UInt32 { get }
var CPU_BASED_HLT: UInt32 { get }
var CPU_BASED_INVLPG: UInt32 { get }
var CPU_BASED_MWAIT: UInt32 { get }
var CPU_BASED_RDPMC: UInt32 { get }
var CPU_BASED_RDTSC: UInt32 { get }
var CPU_BASED_CR3_LOAD: UInt32 { get }
var CPU_BASED_CR3_STORE: UInt32 { get }
var CPU_BASED_CR8_LOAD: UInt32 { get }
var CPU_BASED_CR8_STORE: UInt32 { get }
var CPU_BASED_TPR_SHADOW: UInt32 { get }
var CPU_BASED_VIRTUAL_NMI_WND: UInt32 { get }
var CPU_BASED_MOV_DR: UInt32 { get }
var CPU_BASED_UNCOND_IO: UInt32 { get }
var CPU_BASED_IO_BITMAPS: UInt32 { get }
var CPU_BASED_MTF: UInt32 { get }
var CPU_BASED_MSR_BITMAPS: UInt32 { get }
var CPU_BASED_MONITOR: UInt32 { get }
var CPU_BASED_PAUSE: UInt32 { get }
var CPU_BASED_SECONDARY_CTLS: UInt32 { get }
var CPU_BASED2_VIRTUAL_APIC: UInt32 { get }
var CPU_BASED2_EPT: UInt32 { get }
var CPU_BASED2_DESC_TABLE: UInt32 { get }
var CPU_BASED2_RDTSCP: UInt32 { get }
var CPU_BASED2_X2APIC: UInt32 { get }
var CPU_BASED2_VPID: UInt32 { get }
var CPU_BASED2_WBINVD: UInt32 { get }
var CPU_BASED2_UNRESTRICTED: UInt32 { get }
var CPU_BASED2_APIC_REG_VIRT: UInt32 { get }
var CPU_BASED2_VIRT_INTR_DELIVERY: UInt32 { get }
var CPU_BASED2_PAUSE_LOOP: UInt32 { get }
var CPU_BASED2_RDRAND: UInt32 { get }
var CPU_BASED2_INVPCID: UInt32 { get }
var CPU_BASED2_VMFUNC: UInt32 { get }
var CPU_BASED2_VMCS_SHADOW: UInt32 { get }
var CPU_BASED2_RDSEED: UInt32 { get }
var CPU_BASED2_EPT_VE: UInt32 { get }
var CPU_BASED2_XSAVES_XRSTORS: UInt32 { get }
var VMX_EPT_VPID_SUPPORT_AD: UInt32 { get }
var VMX_EPT_VPID_SUPPORT_EXONLY: UInt32 { get }
var VMEXIT_SAVE_DBG_CONTROLS: UInt32 { get }
var VMEXIT_HOST_IA32E: UInt32 { get }
var VMEXIT_LOAD_IA32_PERF_GLOBAL_CTRL: UInt32 { get }
var VMEXIT_ACK_INTR: UInt32 { get }
var VMEXIT_SAVE_IA32_PAT: UInt32 { get }
var VMEXIT_LOAD_IA32_PAT: UInt32 { get }
var VMEXIT_SAVE_EFER: UInt32 { get }
var VMEXIT_LOAD_EFER: UInt32 { get }
var VMEXIT_SAVE_VMX_TIMER: UInt32 { get }
var VMENTRY_LOAD_DBG_CONTROLS: UInt32 { get }
var VMENTRY_GUEST_IA32E: UInt32 { get }
var VMENTRY_SMM: UInt32 { get }
var VMENTRY_DEACTIVATE_DUAL_MONITOR: UInt32 { get }
var VMENTRY_LOAD_IA32_PERF_GLOBAL_CTRL: UInt32 { get }
var VMENTRY_LOAD_IA32_PAT: UInt32 { get }
var VMENTRY_LOAD_EFER: UInt32 { get }
var VMX_REASON_EXC_NMI: Int { get }
var VMX_REASON_IRQ: Int { get }
var VMX_REASON_TRIPLE_FAULT: Int { get }
var VMX_REASON_INIT: Int { get }
var VMX_REASON_SIPI: Int { get }
var VMX_REASON_IO_SMI: Int { get }
var VMX_REASON_OTHER_SMI: Int { get }
var VMX_REASON_IRQ_WND: Int { get }
var VMX_REASON_VIRTUAL_NMI_WND: Int { get }
var VMX_REASON_TASK: Int { get }
var VMX_REASON_CPUID: Int { get }
var VMX_REASON_GETSEC: Int { get }
var VMX_REASON_HLT: Int { get }
var VMX_REASON_INVD: Int { get }
var VMX_REASON_INVLPG: Int { get }
var VMX_REASON_RDPMC: Int { get }
var VMX_REASON_RDTSC: Int { get }
var VMX_REASON_RSM: Int { get }
var VMX_REASON_VMCALL: Int { get }
var VMX_REASON_VMCLEAR: Int { get }
var VMX_REASON_VMLAUNCH: Int { get }
var VMX_REASON_VMPTRLD: Int { get }
var VMX_REASON_VMPTRST: Int { get }
var VMX_REASON_VMREAD: Int { get }
var VMX_REASON_VMRESUME: Int { get }
var VMX_REASON_VMWRITE: Int { get }
var VMX_REASON_VMOFF: Int { get }
var VMX_REASON_VMON: Int { get }
var VMX_REASON_MOV_CR: Int { get }
var VMX_REASON_MOV_DR: Int { get }
var VMX_REASON_IO: Int { get }
var VMX_REASON_RDMSR: Int { get }
var VMX_REASON_WRMSR: Int { get }
var VMX_REASON_VMENTRY_GUEST: Int { get }
var VMX_REASON_VMENTRY_MSR: Int { get }
var VMX_REASON_MWAIT: Int { get }
var VMX_REASON_MTF: Int { get }
var VMX_REASON_MONITOR: Int { get }
var VMX_REASON_PAUSE: Int { get }
var VMX_REASON_VMENTRY_MC: Int { get }
var VMX_REASON_TPR_THRESHOLD: Int { get }
var VMX_REASON_APIC_ACCESS: Int { get }
var VMX_REASON_VIRTUALIZED_EOI: Int { get }
var VMX_REASON_GDTR_IDTR: Int { get }
var VMX_REASON_LDTR_TR: Int { get }
var VMX_REASON_EPT_VIOLATION: Int { get }
var VMX_REASON_EPT_MISCONFIG: Int { get }
var VMX_REASON_EPT_INVEPT: Int { get }
var VMX_REASON_RDTSCP: Int { get }
var VMX_REASON_VMX_TIMER_EXPIRED: Int { get }
var VMX_REASON_INVVPID: Int { get }
var VMX_REASON_WBINVD: Int { get }
var VMX_REASON_XSETBV: Int { get }
var VMX_REASON_APIC_WRITE: Int { get }
var VMX_REASON_RDRAND: Int { get }
var VMX_REASON_INVPCID: Int { get }
var VMX_REASON_VMFUNC: Int { get }
var VMX_REASON_RDSEED: Int { get }
var VMX_REASON_XSAVES: Int { get }
var VMX_REASON_XRSTORS: Int { get }
var IRQ_INFO_EXT_IRQ: UInt32 { get }
var IRQ_INFO_NMI: UInt32 { get }
var IRQ_INFO_HARD_EXC: UInt32 { get }
var IRQ_INFO_SOFT_IRQ: UInt32 { get }
var IRQ_INFO_PRIV_SOFT_EXC: UInt32 { get }
var IRQ_INFO_SOFT_EXC: UInt32 { get }
var IRQ_INFO_ERROR_VALID: UInt32 { get }
var IRQ_INFO_VALID: UInt32 { get }

/*!
 * @enum       hv_x86_reg_t
 * @abstract   x86 architectural register IDs
 */
struct hv_x86_reg_t : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var HV_X86_RIP: hv_x86_reg_t { get }
var HV_X86_RFLAGS: hv_x86_reg_t { get }
var HV_X86_RAX: hv_x86_reg_t { get }
var HV_X86_RCX: hv_x86_reg_t { get }
var HV_X86_RDX: hv_x86_reg_t { get }
var HV_X86_RBX: hv_x86_reg_t { get }
var HV_X86_RSI: hv_x86_reg_t { get }
var HV_X86_RDI: hv_x86_reg_t { get }
var HV_X86_RSP: hv_x86_reg_t { get }
var HV_X86_RBP: hv_x86_reg_t { get }
var HV_X86_R8: hv_x86_reg_t { get }
var HV_X86_R9: hv_x86_reg_t { get }
var HV_X86_R10: hv_x86_reg_t { get }
var HV_X86_R11: hv_x86_reg_t { get }
var HV_X86_R12: hv_x86_reg_t { get }
var HV_X86_R13: hv_x86_reg_t { get }
var HV_X86_R14: hv_x86_reg_t { get }
var HV_X86_R15: hv_x86_reg_t { get }
var HV_X86_CS: hv_x86_reg_t { get }
var HV_X86_SS: hv_x86_reg_t { get }
var HV_X86_DS: hv_x86_reg_t { get }
var HV_X86_ES: hv_x86_reg_t { get }
var HV_X86_FS: hv_x86_reg_t { get }
var HV_X86_GS: hv_x86_reg_t { get }
var HV_X86_IDT_BASE: hv_x86_reg_t { get }
var HV_X86_IDT_LIMIT: hv_x86_reg_t { get }
var HV_X86_GDT_BASE: hv_x86_reg_t { get }
var HV_X86_GDT_LIMIT: hv_x86_reg_t { get }
var HV_X86_LDTR: hv_x86_reg_t { get }
var HV_X86_LDT_BASE: hv_x86_reg_t { get }
var HV_X86_LDT_LIMIT: hv_x86_reg_t { get }
var HV_X86_LDT_AR: hv_x86_reg_t { get }
var HV_X86_TR: hv_x86_reg_t { get }
var HV_X86_TSS_BASE: hv_x86_reg_t { get }
var HV_X86_TSS_LIMIT: hv_x86_reg_t { get }
var HV_X86_TSS_AR: hv_x86_reg_t { get }
var HV_X86_CR0: hv_x86_reg_t { get }
var HV_X86_CR1: hv_x86_reg_t { get }
var HV_X86_CR2: hv_x86_reg_t { get }
var HV_X86_CR3: hv_x86_reg_t { get }
var HV_X86_CR4: hv_x86_reg_t { get }
var HV_X86_DR0: hv_x86_reg_t { get }
var HV_X86_DR1: hv_x86_reg_t { get }
var HV_X86_DR2: hv_x86_reg_t { get }
var HV_X86_DR3: hv_x86_reg_t { get }
var HV_X86_DR4: hv_x86_reg_t { get }
var HV_X86_DR5: hv_x86_reg_t { get }
var HV_X86_DR6: hv_x86_reg_t { get }
var HV_X86_DR7: hv_x86_reg_t { get }
var HV_X86_TPR: hv_x86_reg_t { get }
var HV_X86_XCR0: hv_x86_reg_t { get }
var HV_X86_REGISTERS_MAX: hv_x86_reg_t { get }
var HV_SUCCESS: Int { get }
var HV_ERROR: Int { get }
var HV_BUSY: Int { get }
var HV_BAD_ARGUMENT: Int { get }
var HV_NO_RESOURCES: Int { get }
var HV_NO_DEVICE: Int { get }
var HV_UNSUPPORTED: Int { get }
typealias hv_return_t = mach_error_t
var HV_VM_DEFAULT: Int { get }
typealias hv_vm_options_t = UInt64
var HV_VCPU_DEFAULT: Int { get }
typealias hv_vcpu_options_t = UInt64
var HV_MEMORY_READ: Int { get }
var HV_MEMORY_WRITE: Int { get }
var HV_MEMORY_EXEC: Int { get }
typealias hv_memory_flags_t = UInt64

/*!
 * @typedef    hv_vcpu_id_t
 * @abstract   Type of a vCPU ID
 */
typealias hv_vcpuid_t = UInt32

/*!
 * @typedef    hv_uvaddr_t
 * @abstract   Type of a user virtual address
 */
typealias hv_uvaddr_t = UnsafePointer<Void>

/*!
 * @typedef    hv_gpaddr_t
 * @abstract   Type of a guest physical address
 */
typealias hv_gpaddr_t = UInt64

/*!
 * @function   hv_vmx_vcpu_read_vmcs
 * @abstract   Returns the current value of a VMCS field of a vCPU
 * @param      vcpu   vCPU ID
 * @param      field  ID of the VMCS field to be read
 * @param      value  Pointer to the VMCS field value (written on success)
 * @result     0 on success or error code
 * @discussion
 *             See Documentation for a list of supported VMCS fields
 *
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vmx_vcpu_read_vmcs(vcpu: hv_vcpuid_t, _ field: UInt32, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t

/*!
 * @function   hv_vmx_vcpu_write_vmcs
 * @abstract   Set the value of a VMCS field of a vCPU
 * @param      vcpu   vCPU ID
 * @param      field  ID of the VMCS field to be written
 * @param      value  Value of the VMCS field to be written
 * @result     0 on success or error code
 * @discussion
 *             See Documentation for a list of supported VMCS fields
 *
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vmx_vcpu_write_vmcs(vcpu: hv_vcpuid_t, _ field: UInt32, _ value: UInt64) -> hv_return_t

/*!
 * @typedef    hv_vmx_capability_t
 * @abstract   Enum type of VMX cabability fields
 */
struct hv_vmx_capability_t : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var HV_VMX_CAP_PINBASED: hv_vmx_capability_t { get }
var HV_VMX_CAP_PROCBASED: hv_vmx_capability_t { get }
var HV_VMX_CAP_PROCBASED2: hv_vmx_capability_t { get }
var HV_VMX_CAP_ENTRY: hv_vmx_capability_t { get }
var HV_VMX_CAP_EXIT: hv_vmx_capability_t { get }
var HV_VMX_CAP_PREEMPTION_TIMER: hv_vmx_capability_t { get }

/*!
 * @function   hv_vmx_vcpu_read_capability
 * @abstract   Returns the VMX capabilities of the host processor
 * @param      field  ID of the VMX capability field to be read
 * @param      value  Pointer to the capability field value (written on success)
 * @result     0 on success or error code
 * @discussion
 *             See Documentation for VMX capabilities that can be / must (not)
 *             be set
 */
@available(OSX 10.10, *)
func hv_vmx_read_capability(field: hv_vmx_capability_t, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t

/*!
 * @function   hv_vmx_vcpu_set_apic_address
 * @abstract   Set the address of the guest APIC for a vCPU in the
 *             guest physical address space of the VM
 * @param      vcpu  vCPU ID
 * @param      gpa   Page aligned address in the guest physical address space
 * @result     0 on success or error code
 * @discussion
 *             Must be called by the owning thread
 */
@available(OSX 10.10, *)
func hv_vmx_vcpu_set_apic_address(vcpu: hv_vcpuid_t, _ gpa: hv_gpaddr_t) -> hv_return_t
