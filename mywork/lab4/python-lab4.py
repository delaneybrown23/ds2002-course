#!/Users/delaneybrown/anaconda3/bin/python3

import boto3
import requests
import urllib.request
import shutil
import tempfile

# Create the S3 client

s3 = boto3.client('s3', region_name='us-east-1')

# Fetch gif from internet and save it with the urrlib method.
# Source for urllib method: https://docs.python.org/3/howto/urllib2.html
 
with urllib.request.urlopen('https://i.gifer.com/origin/31/312c6b25c3f7c3e133cfc6b67a5ad745.gif') as response:
	with tempfile.NamedTemporaryFile(delete=False) as corgi_gif:
		shutil.copyfileobj(response, corgi_gif)

with open(corgi_gif.name) as html:
	pass

# Upload the image file to S3 bucket

bucket = 'ds2002labnew1-vvz2bg'
local_file = 'corgi_gif'

resp = s3.put_object(
	Body = local_file,
	Bucket = bucket,
	Key = local_file,
	ACL = 'public-read'
	)

# Presign the image file with 7 day expiration time for URL

bucket_name = 'ds2002labnew1-vvz2bg'
object_name = 'corgi_gif'
expires_in = 604800

response = s3.generate_presigned_url(
	'get_object',
	Params={'Bucket': bucket_name, 'Key': object_name},
	ExpiresIn=expires_in
	)

# Output presigned URL

print(response)

# I unfortunately was not able to correctly produce the presigned URL output when I ran my python file. I continue to get an Expired Token error when trying to run the file, and unfortunately I was not able to solve this.
