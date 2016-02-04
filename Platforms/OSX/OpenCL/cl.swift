
typealias cl_platform_id = COpaquePointer
typealias cl_context = COpaquePointer
typealias cl_command_queue = COpaquePointer
typealias cl_mem = COpaquePointer
typealias cl_program = COpaquePointer
typealias cl_kernel = COpaquePointer
typealias cl_event = COpaquePointer
typealias cl_sampler = COpaquePointer
typealias cl_bool = cl_uint
typealias cl_bitfield = cl_ulong
typealias cl_device_type = cl_bitfield
typealias cl_platform_info = cl_uint
typealias cl_device_info = cl_uint
typealias cl_device_fp_config = cl_bitfield
typealias cl_device_mem_cache_type = cl_uint
typealias cl_device_local_mem_type = cl_uint
typealias cl_device_exec_capabilities = cl_bitfield
typealias cl_command_queue_properties = cl_bitfield
typealias cl_device_partition_property = Int
typealias cl_device_affinity_domain = cl_bitfield
typealias cl_context_properties = Int
typealias cl_context_info = cl_uint
typealias cl_command_queue_info = cl_uint
typealias cl_channel_order = cl_uint
typealias cl_channel_type = cl_uint
typealias cl_mem_flags = cl_bitfield
typealias cl_mem_object_type = cl_uint
typealias cl_mem_info = cl_uint
typealias cl_mem_migration_flags = cl_bitfield
typealias cl_image_info = cl_uint
typealias cl_buffer_create_type = cl_uint
typealias cl_addressing_mode = cl_uint
typealias cl_filter_mode = cl_uint
typealias cl_sampler_info = cl_uint
typealias cl_map_flags = cl_bitfield
typealias cl_program_info = cl_uint
typealias cl_program_build_info = cl_uint
typealias cl_program_binary_type = cl_uint
typealias cl_build_status = cl_int
typealias cl_kernel_info = cl_uint
typealias cl_kernel_arg_info = cl_uint
typealias cl_kernel_arg_address_qualifier = cl_uint
typealias cl_kernel_arg_access_qualifier = cl_uint
typealias cl_kernel_arg_type_qualifier = cl_bitfield
typealias cl_kernel_work_group_info = cl_uint
typealias cl_event_info = cl_uint
typealias cl_command_type = cl_uint
typealias cl_profiling_info = cl_uint
struct _cl_image_format {
  var image_channel_order: cl_channel_order
  var image_channel_data_type: cl_channel_type
  init()
  init(image_channel_order: cl_channel_order, image_channel_data_type: cl_channel_type)
}
typealias cl_image_format = _cl_image_format
struct _cl_image_desc {
  var image_type: cl_mem_object_type
  var image_width: Int
  var image_height: Int
  var image_depth: Int
  var image_array_size: Int
  var image_row_pitch: Int
  var image_slice_pitch: Int
  var num_mip_levels: cl_uint
  var num_samples: cl_uint
  var buffer: cl_mem
  init()
  init(image_type: cl_mem_object_type, image_width: Int, image_height: Int, image_depth: Int, image_array_size: Int, image_row_pitch: Int, image_slice_pitch: Int, num_mip_levels: cl_uint, num_samples: cl_uint, buffer: cl_mem)
}
typealias cl_image_desc = _cl_image_desc
struct _cl_buffer_region {
  var origin: Int
  var size: Int
  init()
  init(origin: Int, size: Int)
}
typealias cl_buffer_region = _cl_buffer_region
var CL_SUCCESS: Int32 { get }
var CL_DEVICE_NOT_FOUND: Int32 { get }
var CL_DEVICE_NOT_AVAILABLE: Int32 { get }
var CL_COMPILER_NOT_AVAILABLE: Int32 { get }
var CL_MEM_OBJECT_ALLOCATION_FAILURE: Int32 { get }
var CL_OUT_OF_RESOURCES: Int32 { get }
var CL_OUT_OF_HOST_MEMORY: Int32 { get }
var CL_PROFILING_INFO_NOT_AVAILABLE: Int32 { get }
var CL_MEM_COPY_OVERLAP: Int32 { get }
var CL_IMAGE_FORMAT_MISMATCH: Int32 { get }
var CL_IMAGE_FORMAT_NOT_SUPPORTED: Int32 { get }
var CL_BUILD_PROGRAM_FAILURE: Int32 { get }
var CL_MAP_FAILURE: Int32 { get }
var CL_MISALIGNED_SUB_BUFFER_OFFSET: Int32 { get }
var CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST: Int32 { get }
var CL_COMPILE_PROGRAM_FAILURE: Int32 { get }
var CL_LINKER_NOT_AVAILABLE: Int32 { get }
var CL_LINK_PROGRAM_FAILURE: Int32 { get }
var CL_DEVICE_PARTITION_FAILED: Int32 { get }
var CL_KERNEL_ARG_INFO_NOT_AVAILABLE: Int32 { get }
var CL_INVALID_VALUE: Int32 { get }
var CL_INVALID_DEVICE_TYPE: Int32 { get }
var CL_INVALID_PLATFORM: Int32 { get }
var CL_INVALID_DEVICE: Int32 { get }
var CL_INVALID_CONTEXT: Int32 { get }
var CL_INVALID_QUEUE_PROPERTIES: Int32 { get }
var CL_INVALID_COMMAND_QUEUE: Int32 { get }
var CL_INVALID_HOST_PTR: Int32 { get }
var CL_INVALID_MEM_OBJECT: Int32 { get }
var CL_INVALID_IMAGE_FORMAT_DESCRIPTOR: Int32 { get }
var CL_INVALID_IMAGE_SIZE: Int32 { get }
var CL_INVALID_SAMPLER: Int32 { get }
var CL_INVALID_BINARY: Int32 { get }
var CL_INVALID_BUILD_OPTIONS: Int32 { get }
var CL_INVALID_PROGRAM: Int32 { get }
var CL_INVALID_PROGRAM_EXECUTABLE: Int32 { get }
var CL_INVALID_KERNEL_NAME: Int32 { get }
var CL_INVALID_KERNEL_DEFINITION: Int32 { get }
var CL_INVALID_KERNEL: Int32 { get }
var CL_INVALID_ARG_INDEX: Int32 { get }
var CL_INVALID_ARG_VALUE: Int32 { get }
var CL_INVALID_ARG_SIZE: Int32 { get }
var CL_INVALID_KERNEL_ARGS: Int32 { get }
var CL_INVALID_WORK_DIMENSION: Int32 { get }
var CL_INVALID_WORK_GROUP_SIZE: Int32 { get }
var CL_INVALID_WORK_ITEM_SIZE: Int32 { get }
var CL_INVALID_GLOBAL_OFFSET: Int32 { get }
var CL_INVALID_EVENT_WAIT_LIST: Int32 { get }
var CL_INVALID_EVENT: Int32 { get }
var CL_INVALID_OPERATION: Int32 { get }
var CL_INVALID_GL_OBJECT: Int32 { get }
var CL_INVALID_BUFFER_SIZE: Int32 { get }
var CL_INVALID_MIP_LEVEL: Int32 { get }
var CL_INVALID_GLOBAL_WORK_SIZE: Int32 { get }
var CL_INVALID_PROPERTY: Int32 { get }
var CL_INVALID_IMAGE_DESCRIPTOR: Int32 { get }
var CL_INVALID_COMPILER_OPTIONS: Int32 { get }
var CL_INVALID_LINKER_OPTIONS: Int32 { get }
var CL_INVALID_DEVICE_PARTITION_COUNT: Int32 { get }
var CL_VERSION_1_0: Int32 { get }
var CL_VERSION_1_1: Int32 { get }
var CL_VERSION_1_2: Int32 { get }
var CL_FALSE: Int32 { get }
var CL_TRUE: Int32 { get }
var CL_BLOCKING: Int32 { get }
var CL_NON_BLOCKING: Int32 { get }
var CL_PLATFORM_PROFILE: Int32 { get }
var CL_PLATFORM_VERSION: Int32 { get }
var CL_PLATFORM_NAME: Int32 { get }
var CL_PLATFORM_VENDOR: Int32 { get }
var CL_PLATFORM_EXTENSIONS: Int32 { get }
var CL_DEVICE_TYPE_DEFAULT: Int32 { get }
var CL_DEVICE_TYPE_CPU: Int32 { get }
var CL_DEVICE_TYPE_GPU: Int32 { get }
var CL_DEVICE_TYPE_ACCELERATOR: Int32 { get }
var CL_DEVICE_TYPE_CUSTOM: Int32 { get }
var CL_DEVICE_TYPE_ALL: UInt32 { get }
var CL_DEVICE_TYPE: Int32 { get }
var CL_DEVICE_VENDOR_ID: Int32 { get }
var CL_DEVICE_MAX_COMPUTE_UNITS: Int32 { get }
var CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS: Int32 { get }
var CL_DEVICE_MAX_WORK_GROUP_SIZE: Int32 { get }
var CL_DEVICE_MAX_WORK_ITEM_SIZES: Int32 { get }
var CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR: Int32 { get }
var CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT: Int32 { get }
var CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT: Int32 { get }
var CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG: Int32 { get }
var CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT: Int32 { get }
var CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE: Int32 { get }
var CL_DEVICE_MAX_CLOCK_FREQUENCY: Int32 { get }
var CL_DEVICE_ADDRESS_BITS: Int32 { get }
var CL_DEVICE_MAX_READ_IMAGE_ARGS: Int32 { get }
var CL_DEVICE_MAX_WRITE_IMAGE_ARGS: Int32 { get }
var CL_DEVICE_MAX_MEM_ALLOC_SIZE: Int32 { get }
var CL_DEVICE_IMAGE2D_MAX_WIDTH: Int32 { get }
var CL_DEVICE_IMAGE2D_MAX_HEIGHT: Int32 { get }
var CL_DEVICE_IMAGE3D_MAX_WIDTH: Int32 { get }
var CL_DEVICE_IMAGE3D_MAX_HEIGHT: Int32 { get }
var CL_DEVICE_IMAGE3D_MAX_DEPTH: Int32 { get }
var CL_DEVICE_IMAGE_SUPPORT: Int32 { get }
var CL_DEVICE_MAX_PARAMETER_SIZE: Int32 { get }
var CL_DEVICE_MAX_SAMPLERS: Int32 { get }
var CL_DEVICE_MEM_BASE_ADDR_ALIGN: Int32 { get }
var CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE: Int32 { get }
var CL_DEVICE_SINGLE_FP_CONFIG: Int32 { get }
var CL_DEVICE_GLOBAL_MEM_CACHE_TYPE: Int32 { get }
var CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE: Int32 { get }
var CL_DEVICE_GLOBAL_MEM_CACHE_SIZE: Int32 { get }
var CL_DEVICE_GLOBAL_MEM_SIZE: Int32 { get }
var CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE: Int32 { get }
var CL_DEVICE_MAX_CONSTANT_ARGS: Int32 { get }
var CL_DEVICE_LOCAL_MEM_TYPE: Int32 { get }
var CL_DEVICE_LOCAL_MEM_SIZE: Int32 { get }
var CL_DEVICE_ERROR_CORRECTION_SUPPORT: Int32 { get }
var CL_DEVICE_PROFILING_TIMER_RESOLUTION: Int32 { get }
var CL_DEVICE_ENDIAN_LITTLE: Int32 { get }
var CL_DEVICE_AVAILABLE: Int32 { get }
var CL_DEVICE_COMPILER_AVAILABLE: Int32 { get }
var CL_DEVICE_EXECUTION_CAPABILITIES: Int32 { get }
var CL_DEVICE_QUEUE_PROPERTIES: Int32 { get }
var CL_DEVICE_NAME: Int32 { get }
var CL_DEVICE_VENDOR: Int32 { get }
var CL_DRIVER_VERSION: Int32 { get }
var CL_DEVICE_PROFILE: Int32 { get }
var CL_DEVICE_VERSION: Int32 { get }
var CL_DEVICE_EXTENSIONS: Int32 { get }
var CL_DEVICE_PLATFORM: Int32 { get }
var CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF: Int32 { get }
var CL_DEVICE_HOST_UNIFIED_MEMORY: Int32 { get }
var CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR: Int32 { get }
var CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT: Int32 { get }
var CL_DEVICE_NATIVE_VECTOR_WIDTH_INT: Int32 { get }
var CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG: Int32 { get }
var CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT: Int32 { get }
var CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE: Int32 { get }
var CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF: Int32 { get }
var CL_DEVICE_OPENCL_C_VERSION: Int32 { get }
var CL_DEVICE_LINKER_AVAILABLE: Int32 { get }
var CL_DEVICE_BUILT_IN_KERNELS: Int32 { get }
var CL_DEVICE_IMAGE_MAX_BUFFER_SIZE: Int32 { get }
var CL_DEVICE_IMAGE_MAX_ARRAY_SIZE: Int32 { get }
var CL_DEVICE_PARENT_DEVICE: Int32 { get }
var CL_DEVICE_PARTITION_MAX_SUB_DEVICES: Int32 { get }
var CL_DEVICE_PARTITION_PROPERTIES: Int32 { get }
var CL_DEVICE_PARTITION_AFFINITY_DOMAIN: Int32 { get }
var CL_DEVICE_PARTITION_TYPE: Int32 { get }
var CL_DEVICE_REFERENCE_COUNT: Int32 { get }
var CL_DEVICE_PREFERRED_INTEROP_USER_SYNC: Int32 { get }
var CL_DEVICE_PRINTF_BUFFER_SIZE: Int32 { get }
var CL_DEVICE_IMAGE_PITCH_ALIGNMENT: Int32 { get }
var CL_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT: Int32 { get }
var CL_FP_DENORM: Int32 { get }
var CL_FP_INF_NAN: Int32 { get }
var CL_FP_ROUND_TO_NEAREST: Int32 { get }
var CL_FP_ROUND_TO_ZERO: Int32 { get }
var CL_FP_ROUND_TO_INF: Int32 { get }
var CL_FP_FMA: Int32 { get }
var CL_FP_SOFT_FLOAT: Int32 { get }
var CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT: Int32 { get }
var CL_NONE: Int32 { get }
var CL_READ_ONLY_CACHE: Int32 { get }
var CL_READ_WRITE_CACHE: Int32 { get }
var CL_LOCAL: Int32 { get }
var CL_GLOBAL: Int32 { get }
var CL_EXEC_KERNEL: Int32 { get }
var CL_EXEC_NATIVE_KERNEL: Int32 { get }
var CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE: Int32 { get }
var CL_QUEUE_PROFILING_ENABLE: Int32 { get }
var CL_CONTEXT_REFERENCE_COUNT: Int32 { get }
var CL_CONTEXT_DEVICES: Int32 { get }
var CL_CONTEXT_PROPERTIES: Int32 { get }
var CL_CONTEXT_NUM_DEVICES: Int32 { get }
var CL_CONTEXT_PLATFORM: Int32 { get }
var CL_CONTEXT_INTEROP_USER_SYNC: Int32 { get }
var CL_DEVICE_PARTITION_EQUALLY: Int32 { get }
var CL_DEVICE_PARTITION_BY_COUNTS: Int32 { get }
var CL_DEVICE_PARTITION_BY_COUNTS_LIST_END: Int32 { get }
var CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN: Int32 { get }
var CL_DEVICE_AFFINITY_DOMAIN_NUMA: Int32 { get }
var CL_DEVICE_AFFINITY_DOMAIN_L4_CACHE: Int32 { get }
var CL_DEVICE_AFFINITY_DOMAIN_L3_CACHE: Int32 { get }
var CL_DEVICE_AFFINITY_DOMAIN_L2_CACHE: Int32 { get }
var CL_DEVICE_AFFINITY_DOMAIN_L1_CACHE: Int32 { get }
var CL_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE: Int32 { get }
var CL_QUEUE_CONTEXT: Int32 { get }
var CL_QUEUE_DEVICE: Int32 { get }
var CL_QUEUE_REFERENCE_COUNT: Int32 { get }
var CL_QUEUE_PROPERTIES: Int32 { get }
var CL_MEM_READ_WRITE: Int32 { get }
var CL_MEM_WRITE_ONLY: Int32 { get }
var CL_MEM_READ_ONLY: Int32 { get }
var CL_MEM_USE_HOST_PTR: Int32 { get }
var CL_MEM_ALLOC_HOST_PTR: Int32 { get }
var CL_MEM_COPY_HOST_PTR: Int32 { get }
var CL_MEM_HOST_WRITE_ONLY: Int32 { get }
var CL_MEM_HOST_READ_ONLY: Int32 { get }
var CL_MEM_HOST_NO_ACCESS: Int32 { get }
var CL_MIGRATE_MEM_OBJECT_HOST: Int32 { get }
var CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED: Int32 { get }
var CL_R: Int32 { get }
var CL_A: Int32 { get }
var CL_RG: Int32 { get }
var CL_RA: Int32 { get }
var CL_RGB: Int32 { get }
var CL_RGBA: Int32 { get }
var CL_BGRA: Int32 { get }
var CL_ARGB: Int32 { get }
var CL_INTENSITY: Int32 { get }
var CL_LUMINANCE: Int32 { get }
var CL_Rx: Int32 { get }
var CL_RGx: Int32 { get }
var CL_RGBx: Int32 { get }
var CL_DEPTH: Int32 { get }
var CL_DEPTH_STENCIL: Int32 { get }
var CL_SNORM_INT8: Int32 { get }
var CL_SNORM_INT16: Int32 { get }
var CL_UNORM_INT8: Int32 { get }
var CL_UNORM_INT16: Int32 { get }
var CL_UNORM_SHORT_565: Int32 { get }
var CL_UNORM_SHORT_555: Int32 { get }
var CL_UNORM_INT_101010: Int32 { get }
var CL_SIGNED_INT8: Int32 { get }
var CL_SIGNED_INT16: Int32 { get }
var CL_SIGNED_INT32: Int32 { get }
var CL_UNSIGNED_INT8: Int32 { get }
var CL_UNSIGNED_INT16: Int32 { get }
var CL_UNSIGNED_INT32: Int32 { get }
var CL_HALF_FLOAT: Int32 { get }
var CL_FLOAT: Int32 { get }
var CL_UNORM_INT24: Int32 { get }
var CL_MEM_OBJECT_BUFFER: Int32 { get }
var CL_MEM_OBJECT_IMAGE2D: Int32 { get }
var CL_MEM_OBJECT_IMAGE3D: Int32 { get }
var CL_MEM_OBJECT_IMAGE2D_ARRAY: Int32 { get }
var CL_MEM_OBJECT_IMAGE1D: Int32 { get }
var CL_MEM_OBJECT_IMAGE1D_ARRAY: Int32 { get }
var CL_MEM_OBJECT_IMAGE1D_BUFFER: Int32 { get }
var CL_MEM_TYPE: Int32 { get }
var CL_MEM_FLAGS: Int32 { get }
var CL_MEM_SIZE: Int32 { get }
var CL_MEM_HOST_PTR: Int32 { get }
var CL_MEM_MAP_COUNT: Int32 { get }
var CL_MEM_REFERENCE_COUNT: Int32 { get }
var CL_MEM_CONTEXT: Int32 { get }
var CL_MEM_ASSOCIATED_MEMOBJECT: Int32 { get }
var CL_MEM_OFFSET: Int32 { get }
var CL_IMAGE_FORMAT: Int32 { get }
var CL_IMAGE_ELEMENT_SIZE: Int32 { get }
var CL_IMAGE_ROW_PITCH: Int32 { get }
var CL_IMAGE_SLICE_PITCH: Int32 { get }
var CL_IMAGE_WIDTH: Int32 { get }
var CL_IMAGE_HEIGHT: Int32 { get }
var CL_IMAGE_DEPTH: Int32 { get }
var CL_IMAGE_ARRAY_SIZE: Int32 { get }
var CL_IMAGE_BUFFER: Int32 { get }
var CL_IMAGE_NUM_MIP_LEVELS: Int32 { get }
var CL_IMAGE_NUM_SAMPLES: Int32 { get }
var CL_ADDRESS_NONE: Int32 { get }
var CL_ADDRESS_CLAMP_TO_EDGE: Int32 { get }
var CL_ADDRESS_CLAMP: Int32 { get }
var CL_ADDRESS_REPEAT: Int32 { get }
var CL_ADDRESS_MIRRORED_REPEAT: Int32 { get }
var CL_FILTER_NEAREST: Int32 { get }
var CL_FILTER_LINEAR: Int32 { get }
var CL_SAMPLER_REFERENCE_COUNT: Int32 { get }
var CL_SAMPLER_CONTEXT: Int32 { get }
var CL_SAMPLER_NORMALIZED_COORDS: Int32 { get }
var CL_SAMPLER_ADDRESSING_MODE: Int32 { get }
var CL_SAMPLER_FILTER_MODE: Int32 { get }
var CL_MAP_READ: Int32 { get }
var CL_MAP_WRITE: Int32 { get }
var CL_MAP_WRITE_INVALIDATE_REGION: Int32 { get }
var CL_PROGRAM_REFERENCE_COUNT: Int32 { get }
var CL_PROGRAM_CONTEXT: Int32 { get }
var CL_PROGRAM_NUM_DEVICES: Int32 { get }
var CL_PROGRAM_DEVICES: Int32 { get }
var CL_PROGRAM_SOURCE: Int32 { get }
var CL_PROGRAM_BINARY_SIZES: Int32 { get }
var CL_PROGRAM_BINARIES: Int32 { get }
var CL_PROGRAM_NUM_KERNELS: Int32 { get }
var CL_PROGRAM_KERNEL_NAMES: Int32 { get }
var CL_PROGRAM_BUILD_STATUS: Int32 { get }
var CL_PROGRAM_BUILD_OPTIONS: Int32 { get }
var CL_PROGRAM_BUILD_LOG: Int32 { get }
var CL_PROGRAM_BINARY_TYPE: Int32 { get }
var CL_PROGRAM_BINARY_TYPE_NONE: Int32 { get }
var CL_PROGRAM_BINARY_TYPE_COMPILED_OBJECT: Int32 { get }
var CL_PROGRAM_BINARY_TYPE_LIBRARY: Int32 { get }
var CL_PROGRAM_BINARY_TYPE_EXECUTABLE: Int32 { get }
var CL_BUILD_SUCCESS: Int32 { get }
var CL_BUILD_NONE: Int32 { get }
var CL_BUILD_ERROR: Int32 { get }
var CL_BUILD_IN_PROGRESS: Int32 { get }
var CL_KERNEL_FUNCTION_NAME: Int32 { get }
var CL_KERNEL_NUM_ARGS: Int32 { get }
var CL_KERNEL_REFERENCE_COUNT: Int32 { get }
var CL_KERNEL_CONTEXT: Int32 { get }
var CL_KERNEL_PROGRAM: Int32 { get }
var CL_KERNEL_ATTRIBUTES: Int32 { get }
var CL_KERNEL_ARG_ADDRESS_QUALIFIER: Int32 { get }
var CL_KERNEL_ARG_ACCESS_QUALIFIER: Int32 { get }
var CL_KERNEL_ARG_TYPE_NAME: Int32 { get }
var CL_KERNEL_ARG_TYPE_QUALIFIER: Int32 { get }
var CL_KERNEL_ARG_NAME: Int32 { get }
var CL_KERNEL_ARG_ADDRESS_GLOBAL: Int32 { get }
var CL_KERNEL_ARG_ADDRESS_LOCAL: Int32 { get }
var CL_KERNEL_ARG_ADDRESS_CONSTANT: Int32 { get }
var CL_KERNEL_ARG_ADDRESS_PRIVATE: Int32 { get }
var CL_KERNEL_ARG_ACCESS_READ_ONLY: Int32 { get }
var CL_KERNEL_ARG_ACCESS_WRITE_ONLY: Int32 { get }
var CL_KERNEL_ARG_ACCESS_READ_WRITE: Int32 { get }
var CL_KERNEL_ARG_ACCESS_NONE: Int32 { get }
var CL_KERNEL_ARG_TYPE_NONE: Int32 { get }
var CL_KERNEL_ARG_TYPE_CONST: Int32 { get }
var CL_KERNEL_ARG_TYPE_RESTRICT: Int32 { get }
var CL_KERNEL_ARG_TYPE_VOLATILE: Int32 { get }
var CL_KERNEL_WORK_GROUP_SIZE: Int32 { get }
var CL_KERNEL_COMPILE_WORK_GROUP_SIZE: Int32 { get }
var CL_KERNEL_LOCAL_MEM_SIZE: Int32 { get }
var CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE: Int32 { get }
var CL_KERNEL_PRIVATE_MEM_SIZE: Int32 { get }
var CL_KERNEL_GLOBAL_WORK_SIZE: Int32 { get }
var CL_EVENT_COMMAND_QUEUE: Int32 { get }
var CL_EVENT_COMMAND_TYPE: Int32 { get }
var CL_EVENT_REFERENCE_COUNT: Int32 { get }
var CL_EVENT_COMMAND_EXECUTION_STATUS: Int32 { get }
var CL_EVENT_CONTEXT: Int32 { get }
var CL_COMMAND_NDRANGE_KERNEL: Int32 { get }
var CL_COMMAND_TASK: Int32 { get }
var CL_COMMAND_NATIVE_KERNEL: Int32 { get }
var CL_COMMAND_READ_BUFFER: Int32 { get }
var CL_COMMAND_WRITE_BUFFER: Int32 { get }
var CL_COMMAND_COPY_BUFFER: Int32 { get }
var CL_COMMAND_READ_IMAGE: Int32 { get }
var CL_COMMAND_WRITE_IMAGE: Int32 { get }
var CL_COMMAND_COPY_IMAGE: Int32 { get }
var CL_COMMAND_COPY_IMAGE_TO_BUFFER: Int32 { get }
var CL_COMMAND_COPY_BUFFER_TO_IMAGE: Int32 { get }
var CL_COMMAND_MAP_BUFFER: Int32 { get }
var CL_COMMAND_MAP_IMAGE: Int32 { get }
var CL_COMMAND_UNMAP_MEM_OBJECT: Int32 { get }
var CL_COMMAND_MARKER: Int32 { get }
var CL_COMMAND_ACQUIRE_GL_OBJECTS: Int32 { get }
var CL_COMMAND_RELEASE_GL_OBJECTS: Int32 { get }
var CL_COMMAND_READ_BUFFER_RECT: Int32 { get }
var CL_COMMAND_WRITE_BUFFER_RECT: Int32 { get }
var CL_COMMAND_COPY_BUFFER_RECT: Int32 { get }
var CL_COMMAND_USER: Int32 { get }
var CL_COMMAND_BARRIER: Int32 { get }
var CL_COMMAND_MIGRATE_MEM_OBJECTS: Int32 { get }
var CL_COMMAND_FILL_BUFFER: Int32 { get }
var CL_COMMAND_FILL_IMAGE: Int32 { get }
var CL_COMPLETE: Int32 { get }
var CL_RUNNING: Int32 { get }
var CL_SUBMITTED: Int32 { get }
var CL_QUEUED: Int32 { get }
var CL_BUFFER_CREATE_TYPE_REGION: Int32 { get }
var CL_PROFILING_COMMAND_QUEUED: Int32 { get }
var CL_PROFILING_COMMAND_SUBMIT: Int32 { get }
var CL_PROFILING_COMMAND_START: Int32 { get }
var CL_PROFILING_COMMAND_END: Int32 { get }
@available(OSX 10.6, *)
func clGetPlatformIDs(_: cl_uint, _: UnsafeMutablePointer<cl_platform_id>, _: UnsafeMutablePointer<cl_uint>) -> cl_int
@available(OSX 10.6, *)
func clGetPlatformInfo(_: cl_platform_id, _: cl_platform_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clGetDeviceIDs(_: cl_platform_id, _: cl_device_type, _: cl_uint, _: UnsafeMutablePointer<cl_device_id>, _: UnsafeMutablePointer<cl_uint>) -> cl_int
@available(OSX 10.6, *)
func clGetDeviceInfo(_: cl_device_id, _: cl_device_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.8, *)
func clCreateSubDevices(_: cl_device_id, _: UnsafePointer<cl_device_partition_property>, _: cl_uint, _: UnsafeMutablePointer<cl_device_id>, _: UnsafeMutablePointer<cl_uint>) -> cl_int
@available(OSX 10.8, *)
func clRetainDevice(_: cl_device_id) -> cl_int
@available(OSX 10.8, *)
func clReleaseDevice(_: cl_device_id) -> cl_int
@available(OSX 10.6, *)
func clCreateContext(_: UnsafePointer<cl_context_properties>, _: cl_uint, _: UnsafePointer<cl_device_id>, _: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Void>, Int, UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<cl_int>) -> cl_context
@available(OSX 10.6, *)
func clCreateContextFromType(_: UnsafePointer<cl_context_properties>, _: cl_device_type, _: (@convention(c) (UnsafePointer<Int8>, UnsafePointer<Void>, Int, UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<cl_int>) -> cl_context
@available(OSX 10.6, *)
func clRetainContext(_: cl_context) -> cl_int
@available(OSX 10.6, *)
func clReleaseContext(_: cl_context) -> cl_int
@available(OSX 10.6, *)
func clGetContextInfo(_: cl_context, _: cl_context_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clCreateCommandQueue(_: cl_context, _: cl_device_id, _: cl_command_queue_properties, _: UnsafeMutablePointer<cl_int>) -> cl_command_queue
@available(OSX 10.6, *)
func clRetainCommandQueue(_: cl_command_queue) -> cl_int
@available(OSX 10.6, *)
func clReleaseCommandQueue(_: cl_command_queue) -> cl_int
@available(OSX 10.6, *)
func clGetCommandQueueInfo(_: cl_command_queue, _: cl_command_queue_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clCreateBuffer(_: cl_context, _: cl_mem_flags, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<cl_int>) -> cl_mem
@available(OSX 10.7, *)
func clCreateSubBuffer(_: cl_mem, _: cl_mem_flags, _: cl_buffer_create_type, _: UnsafePointer<Void>, _: UnsafeMutablePointer<cl_int>) -> cl_mem
@available(OSX 10.8, *)
func clCreateImage(_: cl_context, _: cl_mem_flags, _: UnsafePointer<cl_image_format>, _: UnsafePointer<cl_image_desc>, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<cl_int>) -> cl_mem
@available(OSX 10.6, *)
func clRetainMemObject(_: cl_mem) -> cl_int
@available(OSX 10.6, *)
func clReleaseMemObject(_: cl_mem) -> cl_int
@available(OSX 10.6, *)
func clGetSupportedImageFormats(_: cl_context, _: cl_mem_flags, _: cl_mem_object_type, _: cl_uint, _: UnsafeMutablePointer<cl_image_format>, _: UnsafeMutablePointer<cl_uint>) -> cl_int
@available(OSX 10.6, *)
func clGetMemObjectInfo(_: cl_mem, _: cl_mem_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clGetImageInfo(_: cl_mem, _: cl_image_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.7, *)
func clSetMemObjectDestructorCallback(_: cl_mem, _: (@convention(c) (cl_mem, UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>) -> cl_int
@available(OSX 10.6, *)
func clCreateSampler(_: cl_context, _: cl_bool, _: cl_addressing_mode, _: cl_filter_mode, _: UnsafeMutablePointer<cl_int>) -> cl_sampler
@available(OSX 10.6, *)
func clRetainSampler(_: cl_sampler) -> cl_int
@available(OSX 10.6, *)
func clReleaseSampler(_: cl_sampler) -> cl_int
@available(OSX 10.6, *)
func clGetSamplerInfo(_: cl_sampler, _: cl_sampler_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clCreateProgramWithSource(_: cl_context, _: cl_uint, _: UnsafeMutablePointer<UnsafePointer<Int8>>, _: UnsafePointer<Int>, _: UnsafeMutablePointer<cl_int>) -> cl_program
@available(OSX 10.6, *)
func clCreateProgramWithBinary(_: cl_context, _: cl_uint, _: UnsafePointer<cl_device_id>, _: UnsafePointer<Int>, _: UnsafeMutablePointer<UnsafePointer<UInt8>>, _: UnsafeMutablePointer<cl_int>, _: UnsafeMutablePointer<cl_int>) -> cl_program
@available(OSX 10.8, *)
func clCreateProgramWithBuiltInKernels(_: cl_context, _: cl_uint, _: UnsafePointer<cl_device_id>, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<cl_int>) -> cl_program
@available(OSX 10.6, *)
func clRetainProgram(_: cl_program) -> cl_int
@available(OSX 10.6, *)
func clReleaseProgram(_: cl_program) -> cl_int
@available(OSX 10.6, *)
func clBuildProgram(_: cl_program, _: cl_uint, _: UnsafePointer<cl_device_id>, _: UnsafePointer<Int8>, _: (@convention(c) (cl_program, UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>) -> cl_int
@available(OSX 10.8, *)
func clCompileProgram(_: cl_program, _: cl_uint, _: UnsafePointer<cl_device_id>, _: UnsafePointer<Int8>, _: cl_uint, _: UnsafePointer<cl_program>, _: UnsafeMutablePointer<UnsafePointer<Int8>>, _: (@convention(c) (cl_program, UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>) -> cl_int
@available(OSX 10.8, *)
func clLinkProgram(_: cl_context, _: cl_uint, _: UnsafePointer<cl_device_id>, _: UnsafePointer<Int8>, _: cl_uint, _: UnsafePointer<cl_program>, _: (@convention(c) (cl_program, UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<cl_int>) -> cl_program
@available(OSX 10.8, *)
func clUnloadPlatformCompiler(_: cl_platform_id) -> cl_int
@available(OSX 10.6, *)
func clGetProgramInfo(_: cl_program, _: cl_program_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clGetProgramBuildInfo(_: cl_program, _: cl_device_id, _: cl_program_build_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clCreateKernel(_: cl_program, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<cl_int>) -> cl_kernel
@available(OSX 10.6, *)
func clCreateKernelsInProgram(_: cl_program, _: cl_uint, _: UnsafeMutablePointer<cl_kernel>, _: UnsafeMutablePointer<cl_uint>) -> cl_int
@available(OSX 10.6, *)
func clRetainKernel(_: cl_kernel) -> cl_int
@available(OSX 10.6, *)
func clReleaseKernel(_: cl_kernel) -> cl_int
@available(OSX 10.6, *)
func clSetKernelArg(_: cl_kernel, _: cl_uint, _: Int, _: UnsafePointer<Void>) -> cl_int
@available(OSX 10.6, *)
func clGetKernelInfo(_: cl_kernel, _: cl_kernel_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.8, *)
func clGetKernelArgInfo(_: cl_kernel, _: cl_uint, _: cl_kernel_arg_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clGetKernelWorkGroupInfo(_: cl_kernel, _: cl_device_id, _: cl_kernel_work_group_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clWaitForEvents(_: cl_uint, _: UnsafePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clGetEventInfo(_: cl_event, _: cl_event_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.7, *)
func clCreateUserEvent(_: cl_context, _: UnsafeMutablePointer<cl_int>) -> cl_event
@available(OSX 10.6, *)
func clRetainEvent(_: cl_event) -> cl_int
@available(OSX 10.6, *)
func clReleaseEvent(_: cl_event) -> cl_int
@available(OSX 10.7, *)
func clSetUserEventStatus(_: cl_event, _: cl_int) -> cl_int
@available(OSX 10.7, *)
func clSetEventCallback(_: cl_event, _: cl_int, _: (@convention(c) (cl_event, cl_int, UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>) -> cl_int
@available(OSX 10.6, *)
func clGetEventProfilingInfo(_: cl_event, _: cl_profiling_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clFlush(_: cl_command_queue) -> cl_int
@available(OSX 10.6, *)
func clFinish(_: cl_command_queue) -> cl_int
@available(OSX 10.6, *)
func clEnqueueReadBuffer(_: cl_command_queue, _: cl_mem, _: cl_bool, _: Int, _: Int, _: UnsafeMutablePointer<Void>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.7, *)
func clEnqueueReadBufferRect(_: cl_command_queue, _: cl_mem, _: cl_bool, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: Int, _: Int, _: Int, _: Int, _: UnsafeMutablePointer<Void>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueWriteBuffer(_: cl_command_queue, _: cl_mem, _: cl_bool, _: Int, _: Int, _: UnsafePointer<Void>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.7, *)
func clEnqueueWriteBufferRect(_: cl_command_queue, _: cl_mem, _: cl_bool, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: Int, _: Int, _: Int, _: Int, _: UnsafePointer<Void>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.8, *)
func clEnqueueFillBuffer(_: cl_command_queue, _: cl_mem, _: UnsafePointer<Void>, _: Int, _: Int, _: Int, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueCopyBuffer(_: cl_command_queue, _: cl_mem, _: cl_mem, _: Int, _: Int, _: Int, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.7, *)
func clEnqueueCopyBufferRect(_: cl_command_queue, _: cl_mem, _: cl_mem, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: Int, _: Int, _: Int, _: Int, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueReadImage(_: cl_command_queue, _: cl_mem, _: cl_bool, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: Int, _: Int, _: UnsafeMutablePointer<Void>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueWriteImage(_: cl_command_queue, _: cl_mem, _: cl_bool, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: Int, _: Int, _: UnsafePointer<Void>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.8, *)
func clEnqueueFillImage(_: cl_command_queue, _: cl_mem, _: UnsafePointer<Void>, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueCopyImage(_: cl_command_queue, _: cl_mem, _: cl_mem, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueCopyImageToBuffer(_: cl_command_queue, _: cl_mem, _: cl_mem, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: Int, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueCopyBufferToImage(_: cl_command_queue, _: cl_mem, _: cl_mem, _: Int, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueMapBuffer(_: cl_command_queue, _: cl_mem, _: cl_bool, _: cl_map_flags, _: Int, _: Int, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>, _: UnsafeMutablePointer<cl_int>) -> UnsafeMutablePointer<Void>
@available(OSX 10.6, *)
func clEnqueueMapImage(_: cl_command_queue, _: cl_mem, _: cl_bool, _: cl_map_flags, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: UnsafeMutablePointer<Int>, _: UnsafeMutablePointer<Int>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>, _: UnsafeMutablePointer<cl_int>) -> UnsafeMutablePointer<Void>
@available(OSX 10.6, *)
func clEnqueueUnmapMemObject(_: cl_command_queue, _: cl_mem, _: UnsafeMutablePointer<Void>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.8, *)
func clEnqueueMigrateMemObjects(_: cl_command_queue, _: cl_uint, _: UnsafePointer<cl_mem>, _: cl_mem_migration_flags, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueNDRangeKernel(_: cl_command_queue, _: cl_kernel, _: cl_uint, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: UnsafePointer<Int>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueTask(_: cl_command_queue, _: cl_kernel, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueNativeKernel(_: cl_command_queue, _: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, _: UnsafeMutablePointer<Void>, _: Int, _: cl_uint, _: UnsafePointer<cl_mem>, _: UnsafeMutablePointer<UnsafePointer<Void>>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.8, *)
func clEnqueueMarkerWithWaitList(_: cl_command_queue, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.8, *)
func clEnqueueBarrierWithWaitList(_: cl_command_queue, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.8, *)
func clGetExtensionFunctionAddressForPlatform(_: cl_platform_id, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<Void>
