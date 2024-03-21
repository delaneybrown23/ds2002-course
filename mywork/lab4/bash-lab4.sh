#!/bin/bash

# Assign image URL to file name
curl https://news.virginia.edu/sites/default/files/Header_SF_Early-Fall_ee_17.jpg > rotunda.jpg

# Upload image file to bucket
aws s3 cp rotunda.jpg s3://ds2002labnew1-vvz2bg/

# Make the expiring URL to allow access for 7 days
aws s3 presign --expires-in 604800 s3://ds2002labnew1-vvz2bg/rotunda.jpg

# Created presigned URL
https://ds2002labnew1-vvz2bg.s3.us-east-1.amazonaws.com/rotunda.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA6GBMEPJ7WTWRYVNU%2F20240321%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240321T151949Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Security-Token=FwoGZXIvYXdzECgaDG%2BdXYy4xAC3VApb0yLEATn8dMKDccuoLKd8qprQFqX8Gg9Nzps0fy0oJ%2BsusUwU8TO9RQCbxUF9RUY0FdyXw8hJD0dmBiySKVYWcQ2uQOpVv1HiNsFLuZX9IYuZ4CiXkhdVrt2T3dbdLR9VeTMfAkWbyB5SKReSVFjwiZQQxPn1QtsdhZYMmDm%2FdtVISZCSM34sLC1EUGDgiVMcfLuKTgehM52mgJV23mhMuqnlWL2n%2BaJS3qJ0xohV8odTI7MVHECb8d3OwLJMXCjeaxC9YdnAUO8ooJbxrwYyLTC%2FRBxU2MAG%2Bgv8zDbLAjWMmqm6yujzqusVXSSH8LXxdXIF4biIOyT5vKo2Hw%3D%3D&X-Amz-Signature=a73e39a9f0afee88a3d7cdeb55cb7b8e5e41dccaa496d34b21ee5bb8dee87e23

