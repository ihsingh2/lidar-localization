import os

import numpy as np
import open3d as o3d
from tqdm import tqdm

os.makedirs("data/kitti-odometry/source", exist_ok=True)
os.makedirs("data/kitti-odometry/target", exist_ok=True)

source_files = [ f'{i:06}' for i in range(100) ]

for source in tqdm(source_files):
    points = np.fromfile(f'../01-map-construction/data/kitti-odometry/sequences/00/velodyne/{source}.bin', \
                                                                dtype=np.float32).reshape((-1, 4))[:, :3]
    pcd = o3d.geometry.PointCloud()
    pcd.points = o3d.utility.Vector3dVector(points)
    o3d.io.write_point_cloud(f'data/kitti-odometry/source/{source}.pcd', pcd)

points = np.fromfile('../01-map-construction/data/kitti-odometry/map/map.bin', dtype=np.float64).reshape((-1, 3))
pcd = o3d.geometry.PointCloud()
pcd.points = o3d.utility.Vector3dVector(points)
o3d.io.write_point_cloud('data/kitti-odometry/target/map.pcd', pcd)
