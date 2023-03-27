# CI-Testing-OpenPrinting
This contains static tests for OpenPrinting Softwares

Steps:
1. Compile the C code first using the bash script (create a soname map for libcupsfilters.so.2.xx for easier linking)
2. Run the executable and provide the `test.txt` file as `argv`. Eg. `ippTest.exe test.txt`.
