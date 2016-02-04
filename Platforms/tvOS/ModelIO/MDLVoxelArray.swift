
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent: MDLVoxelIndex, maximumExtent: MDLVoxelIndex)
}
@available(tvOS 9.0, *)
class MDLVoxelArray : NSObject {
  init(asset: MDLAsset, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  init(asset: MDLAsset, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  init(data voxelData: NSData, boundingBox: MDLAxisAlignedBoundingBox, voxelExtent: Float)
  func meshUsingAllocator(allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func voxelExistsAtIndex(index: MDLVoxelIndex, allowAnyX: Bool, allowAnyY: Bool, allowAnyZ: Bool, allowAnyShell: Bool) -> Bool
  func setVoxelAtIndex(index: MDLVoxelIndex)
  func setVoxelsForMesh(mesh: MDLMesh, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  func setVoxelsForMesh(mesh: MDLMesh, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  func voxelsWithinExtent(extent: MDLVoxelIndexExtent) -> NSData?
  func voxelIndices() -> NSData?
  func unionWithVoxels(voxels: MDLVoxelArray)
  func differenceWithVoxels(voxels: MDLVoxelArray)
  func intersectWithVoxels(voxels: MDLVoxelArray)
  func indexOfSpatialLocation(location: vector_float3) -> MDLVoxelIndex
  func spatialLocationOfIndex(index: MDLVoxelIndex) -> vector_float3
  func voxelBoundingBoxAtIndex(index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox
  var count: Int { get }
  var voxelIndexExtent: MDLVoxelIndexExtent { get }
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  init()
}
