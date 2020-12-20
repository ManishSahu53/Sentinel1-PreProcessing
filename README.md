# Sentinel1-PreProcessing
This repo is used to process sentinel1 data and put COGs in S3


## Configurations
1. Use python 2.7 or 3.3 or 3.4 only
2. `wget https://download.esa.int/step/snap/8.0/installers/esa-snap_sentinel_unix_8_0.sh` to download the setup
3. Then do `bash install`, Follow the steps
4. Get Python2.7 bin file, it can be found below.
    * /home/ankush/miniconda/envs/py27/bin/python2.7
    * Then provide python bin path there

5. Configure python2.7 again
    * `cd  /home/ankush/snap/bin/`
    * Run: `bash snappy-conf /home/ankush/miniconda3/envs/py27/bin/python2.7` to register
6. Fianlly package is installed to path: `/home/ankush/.snap/snap-python/snappy`
7. Copy this to our usual site-packages path: `cp -r /home/ankush/.snap/snap-python/snappy home/ankush/miniconda3/envs/py27/lib/python2.7/site-packages/`

8. Done, Impory by 
    >import snappy