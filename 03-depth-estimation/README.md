# Monocular Depth Estimation using Depth Anything v2

1. Compute metric depth for the monocular images using Depth Anything v2.

```shell
python Depth-Anything-V2/metric_depth/run.py --encoder vits --load-from Depth-Anything-V2/metric_depth/checkpoints/depth_anything_v2_metric_vkitti_vits.pth --max-depth 80 --img-path <path to image dir> --outdir <path to output dir> --save-numpy
```

**Note:** Ensure the models are downloaded (using the links given in the respective repo) and stored in the checkpoints directory.

2. Use the metric depth and projection matrix information to reproject the image pixels to 3D space.

3. Optionally, prune the far away points susceptible to noisy estimates.

4. Store the local 3D point clouds, in the same hierarchy as the original dataset. This ensures compatibility with dataloaders.

5. Repeat the procedure from Phase 1 and 2 for map construction and localization.
