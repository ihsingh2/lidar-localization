# LiDAR Global Recognition using 3D-BBS

## Steps

1. Ensure 3D-BBS is compiled and installed on your system. You can use the helper script provided to handle this.

```shell
bash compile.sh
```

**Note:** Successful compilation may require small, system-specific changes to the ``CMakeLists.txt`` file in both the 3D-BBS root and test directory. To opt for a simpler CPU only compilation, add the ``-DBUILD_CUDA=OFF`` flag to the cmake commands in ``compile.sh``.

2. Setup the configuration file ``config.yaml`` with the required paths and hyperparameter values.

3. Run the testing program with the configuration file as the argument.

```shell
./gpu_test config.yaml
```
