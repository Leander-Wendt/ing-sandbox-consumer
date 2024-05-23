#!/bin/bash

###################################################################################
#                             REQUEST CUSTOMER ACCESS TOKEN                       #
###################################################################################
# This script requests customer access token based on authorization code using-   #
# the endpoint "oauth2/token". You must request an application access token to 	  #
# run this script. Please update the variables "accessToken", "certPath" and      #
# "authorization_code"      													  #
###################################################################################

keyId="5ca1ab1e-c0ca-c01a-cafe-154deadbea75" # client_id as provided in the documentation
certPath="./certs/"  # path of the downloaded certificates and keys
authorization_code="f8a4637baf38eb524c6292b8561e5344332e65fec799b742032a8193528838a2fa3bc4f3f674423c89ca56d8ef8cf4c8" # generated value of authorization code from the previous step.

# URL encoded value of http://api.example.com
redirect="http%3A%2f%2fapi.example.com%2f"

# Generated value of application access token. Please note that the access token expires in 15 minutes
accessToken=""

# AUTHORIZATION CODE MUST BE PROVIDED AS A VALUE TO THE "code" PARAMETER IN THE PAYLOAD.
payload="grant_type=authorization_code&code=$authorization_code&redirect_uri=$redirect"
payloadDigest=`echo -n "$payload" | openssl dgst -binary -sha256 | openssl base64`
digest=SHA-256=$payloadDigest

reqDate=$(LC_TIME=en_US.UTF-8 date -u "+%a, %d %b %Y %H:%M:%S GMT")

httpHost="https://api.sandbox.ing.com"

# httpMethod value must be in lower case
httpMethod="post"
reqPath="/oauth2/token"

# signingString must be declared exactly as shown below in separate lines
signingString="(request-target): $httpMethod $reqPath
date: $reqDate
digest: $digest"

signature=`printf %s "$signingString" | openssl dgst -sha256 -sign "${certPath}example_client_signing.key" | openssl base64 -A`

# Curl request method must be in uppercase e.g "POST", "GET"
curl -i -X POST "${httpHost}${reqPath}" \
-H "Accept: application/json" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Digest: ${digest}" \
-H "Date: ${reqDate}" \
--user-agent "openbanking-get-started/1.0.0 bash" \
-H "Authorization: Bearer ${accessToken}" \
-H "Signature: keyId=\"$keyId\",algorithm=\"rsa-sha256\",headers=\"(request-target) date digest\",signature=\"$signature\"" \
-d "${payload}" \
--cert "${certPath}example_client_tls.cer" \
--key "${certPath}example_client_tls.key"
