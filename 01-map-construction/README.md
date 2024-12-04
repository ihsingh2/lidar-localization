# Generation of HD LiDAR Map using KISS-ICP

## Steps

1. Install KISS-ICP in the working environment.

```shell
pip install "kiss-icp[all]"
```

2. Run the following command to get the poses for each frame stored in a directory.

```shell
kiss_icp_pipeline <data_directory>
```

**Note:** The program should automatically detect the required dataloader. Alternatively, one can use the help command ``kiss_icp_pipeline --help`` to see the list of supported dataloaders and set the dataloader manually.

3. Use the computed poses stored in ``results`` directory to align the local point clouds.

4. Optionally, integrate the aligned point clouds using VDBFusion.
