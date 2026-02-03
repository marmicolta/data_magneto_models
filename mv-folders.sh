#!/bin/bash

# --- File Management Script ---

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Starting file operations..."

# Create folder for lineshistory
mkdir -p ./h23
mkdir -p ./h24
mkdir -p ./h25
mkdir -p ./ca15
mkdir -p ./ca25
mkdir -p ./ca35
mkdir -p ./h35
mkdir -p ./h36
mkdir -p ./h37
mkdir -p ./h47

#now move the files into the folders
mv ./prof*h23*.0 ./h23/
mv ./prof*h24*.0 ./h24/
mv ./prof*h25*.0 ./h25/

mv ./prof*h35*.0 ./h35/
mv ./prof*h36*.0 ./h36/
mv ./prof*h37*.0 ./h37/

mv ./prof*h47*.0 ./h47/ 

mv ./prof*ca15.Ca.*.0 ./ca15/
mv ./prof*ca15.Ca_0p5.*I15*.0 ./ca15/
mv ./prof*ca15.Ca_0p5.*.0 ./ca15/
mv ./prof*ca15.Ca_0p1.*I15*.0 ./ca15/
mv ./prof*ca15.Ca_0p1.*.0 ./ca15/
mv ./prof*ca15.Ca_0p01.I15*.0 ./ca15/
mv ./prof*ca15.Ca_0p01.*.0 ./ca15/

mv ./prof*ca25.Ca.*.0 ./ca25/
mv ./prof*ca25.Ca_0p5.*I15*.0 ./ca25/
mv ./prof*ca25.Ca_0p5.*.0 ./ca25/
mv ./prof*ca25.Ca_0p1.*I15*.0 ./ca25/
mv ./prof*ca25.Ca_0p1.*.0 ./ca25/
mv ./prof*ca25.Ca_0p01.I15*.0 ./ca25/
mv ./prof*ca25.Ca_0p01.*.0 ./ca25/

mv ./prof*ca35.Ca.*.0 ./ca35/
mv ./prof*ca35.Ca_0p5.*I15*.0 ./ca35/
mv ./prof*ca35.Ca_0p5.*.0 ./ca35/
mv ./prof*ca35.Ca_0p1.*I15*.0 ./ca35/
mv ./prof*ca35.Ca_0p1.*.0 ./ca35/
mv ./prof*ca35.Ca_0p01.I15*.0 ./ca35/
mv ./prof*ca35.Ca_0p01.*.0 ./ca35/

#tar other files and then remove them

tar -czf ca24-G01-G06.tar.gz ./prof*ca24*.0 
rm ./prof*ca24*.0 
tar -czf ca14-G01-G06.tar.gz ./prof*ca14*.0 
rm ./prof*ca14*.0 
tar -czf h26-G01-G06.tar.gz ./prof*h26*.0 
rm ./prof*h26*.0 
tar -czf h27-G01-G06.tar.gz ./prof*h27*.0 
rm ./prof*h27*.0 
tar -czf h34-G01-G06.tar.gz ./prof*h34*.0 
rm ./prof*h34*.0 
tar -czf h38-G01-G06.tar.gz ./prof*h38*.0 
rm ./prof*h38*.0 
tar -czf h39-G01-G06.tar.gz ./prof*h39*.0 
rm ./prof*h39*.0 
tar -czf h310-G01-G06.tar.gz ./prof*h310*.0 
rm ./prof*h310*.0 
tar -czf h311-G01-G06.tar.gz ./prof*h311*.0 
rm ./prof*h311*.0 
tar -czf h312-G01-G06.tar.gz ./prof*h312*.0 
rm ./prof*h312*.0 
tar -czf h313-G01-G06.tar.gz ./prof*h313*.0 
rm ./prof*h313*.0 
tar -czf h314-G01-G06.tar.gz ./prof*h314*.0 
rm ./prof*h314*.0 
tar -czf h315-G01-G06.tar.gz ./prof*h315*.0 
rm ./prof*h315*.0 
tar -czf h316-G01-G06.tar.gz ./prof*h316*.0 
rm ./prof*h316*.0 
tar -czf h45-G01-G06.tar.gz ./prof*h45*.0 
rm ./prof*h45*.0 
tar -czf h48-G01-G06.tar.gz ./prof*h48*.0 
rm ./prof*h48*.0 
tar -czf h46-G01-G06.tar.gz ./prof*h46*.0 
rm ./prof*h46*.0 
tar -czf h49-G01-G06.tar.gz ./prof*h49*.0 
rm ./prof*h49*.0 
tar -czf h410-G01-G06.tar.gz ./prof*h410*.0 
rm ./prof*h410*.0 
tar -czf h411-G01-G06.tar.gz ./prof*h411*.0 
rm ./prof*h411*.0 
tar -czf h412-G01-G06.tar.gz ./prof*h412*.0 
rm ./prof*h412*.0 
tar -czf h413-G01-G06.tar.gz ./prof*h413*.0 
rm ./prof*h413*.0 
tar -czf h414-G01-G06.tar.gz ./prof*h414*.0 
rm ./prof*h414*.0 
tar -czf h415-G01-G06.tar.gz ./prof*h415*.0 
rm ./prof*h415*.0 
tar -czf h416-G01-G06.tar.gz ./prof*h416*.0 
rm ./prof*h416*.0 