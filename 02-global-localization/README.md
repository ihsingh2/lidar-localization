# LiDAR Global Recognition using 3D-BBS

## Steps

0. Ensure the dependencies -- Boost, Eigen and PCL are installed on your system.

1. Install 3D-BBS and build the testing program. You can use the helper script provided to handle this.

```shell
bash compile.sh
```

**Note:** Successful compilation may require small, system-specific changes to the ``CMakeLists.txt`` file in both the 3D-BBS root and test directory.

2. Setup the configuration file ``config.yaml`` with the required paths and hyperparameter values.

3. Run the testing program with the configuration file as the argument.

```shell
./gpu_test config.yaml
```
