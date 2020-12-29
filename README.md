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
    
    
## Processing Step
1. **Apply orbit file**: Updates orbit metadata with a restituted orbit file.
2. **GRD border noise removal**: Removes low intensity noise and invalid data on scene edges. (As of January 12, 2018)
3. **Thermal noise removal**: Removes additive noise in sub-swaths to help reduce discontinuities between sub-swaths for scenes in multi-swath acquisition modes. (This operation cannot be applied to images produced before July 2015)
4. **Radiometric calibration**: Computes backscatter intensity using sensor calibration parameters in the GRD metadata.
5. **Terrain correction (orthorectification)**: Converts data from ground range geometry, which does not take terrain into account, to σ° using the SRTM 30 meter DEM or the ASTER DEM for high latitudes (greater than 60° or less than -60°).

## Resources
1. Detail Infor about resource, data files: https://github.com/azavea/noaa-flood-mapping/issues/39
1. Python Snappy Peocessing: https://github.com/wajuqi/Sentinel-1-preprocessing-using-Snappy/blob/master/s1_preprocessing.py
2. AWS S3 bucket: https://registry.opendata.aws/sentinel-1/
3. File Name format: https://roda.sentinel-hub.com/sentinel-s1-l1c/GRD/readme.html
4. Processing using PySAR: https://github.com/johntruckenbrodt/pyroSAR/issues/107
5. Forum: https://forum.sentinel-hub.com/t/using-aws-s1-grd-data-for-sar-processing/2220/2
6. Search and Downloading S1 dataser: https://github.com/prodes-amz/aws_imagery_pack
7. SAFE format specifications:https://sentinel.esa.int/web/sentinel/user-guides/sentinel-1-sar/data-formats/safe-specification

## Time to Process
1. Orbit correction - 30.4 s
2. Thermal Noise Removal - 4min 14s
3. Calibration - 4min 4s
4. Multi look - 3min 7s
5. Terrain Correction - 8min 1s
6. Ortho rectification - 2min 59s
7. Speckle Filter - 3min 8s

Total Time - ~26min

