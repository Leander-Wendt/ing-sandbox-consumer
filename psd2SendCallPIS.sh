#!/bin/bash

###################################################################################
#                             CALL PIS API  					                  #
###################################################################################
# This script calls the PIS API in sandbox and performs a post request to the-    #
# endpoint "v1/payments/sepa-credit-transfers You must request and application	  #
# access token to call this script.   									  #
# Please update the variables "accessToken" and "certPath".   					  #
###################################################################################


keyId="5ca1ab1e-c0ca-c01a-cafe-154deadbea75"
certPath="./certs/"
httpHost="https://api.sandbox.ing.com"

# httpMethod value must be in lower case
httpMethod="post"
reqPath="/v1/payments/sepa-credit-transfers"

# Generated value of application access token. Please note that the access token expires in 15 minutes

accessToken="eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwia2lkIjoidHN0LTRjOGI1Mzk3LTFhYjgtNDFhOC1hNTViLWE3MTk5MTJiODNkMiIsImN0eSI6IkpXVCJ9..pQBF6qWpwHGMlsrzZRX3mQ.WQ7CFpd2PQs0CtnPkdNedb5XmaGEb58erYxdLeoW5H_KNJqEVM4--bxaL0KY7Kst0xvQFmYR71kG7AtI8_LHxW-cfsEltAnfqkLZpcuY-QgeE1V-fTUhVNNeIpn02It319C6eLwZ72NgIJam9NkvX1tVlDrkzCT9RuNNAEVNmD_l_XV1TH_84DuuEn3S2RlztG4RrBwXfa5GZ1kut6MEMJwV_8uBd28cJMG2oQcPS8hS8FGFTOu5wM2uh7eOGpu5A__jhJVn8pkMswa1haMDb2EF6PN9knVawPhDvLkNlONQ9ng3aXjoazf-AHCY5Cj69I5nUu29W99nnRSUTSFOIZWDYP9MVG8JkjnnFPyymer8JjScT8f46XB0g7fBRCv0cQ90kQ-S03ByYeT2kcUAJRNPgq0ZWT8oCahzV5HXqN7TmlcI7oV9wIJxbAMEbh1zJp_8pIp69vIZ7EnCtzXzgjl4TkO8hdVJPzO9cJMt046KRJaD2OtVhNIcSiU2eiQFnhI0fSjz5NlYvnDg1aZy8KzYpFF7I9nSRhyOY0fO4AQhXi0D4mGBYM_bfH3nzS3JdLN0ge1LRyD9vIEEJtzCyIJOGIoWSciveu41ecQvcRHxUc8Z44u6P1KIczGPKYL9Y840KeCJ48laedIEAm44CaCjmeWacM1NmRtkau4IoHQ-crUGAjpy2nn6hJC_g6vssja6DyuIe-DBbe6jTGqkLXPz6V-Wc5fIzWIDBo9R3Ql8NfOfu1Re_U3h54A2X-MaQZvq4XY9CxprJK6CrzMsw-JWgZFefAiro38hcR9-rcSP61EeT2ZDEnO5NAwfLkN2xwtHJSJzgmNOKcYor7Rgj-y8D3MKjbZAeO8ZDG39uQOjYRDwL4izCwsoN7oDCg9fcO-_7C-6R5zllTMiC6uRi7uCCAKr016CN5-IFlZWIq1lEJwA7aSWd5H-Av8HpFr551luHFZRFm9QKVuFunoLqEdXl_QvziOFDh8Zsq7_TpOgwkwvmIC9kUk8b2_ft7aklAZ0DDQ7kXAwN25pq1elcimuCbyq0k18ZPoJm2OojrUGxVWLivOo_mMA02p8i4zeSNrBPIrvVzBAMFW_AgTvj1lVjA9NXFwZWpsMrEkBTCPhxfhJMQMapgjwW-eAB2DuP4LRMLCzcel9HrhliavEBGisxSVughqTUOnnp70yYdDjYmdj0mQJEDDGbWArIWko2zBpJOopoHVdwc3bEFcCmbn8-WIP0uiK8jbAqbJgj13IYndWtAQyg6DVUUnePHBkvKq-qzgjTnx7HCbbJgfEwjNVwl6MfuAkAeVRJNnkmUfccjMzTlYhT_NKejm0XvBF3JeGaHcbZU9L8zqKVtbuqwo1LB_HZtS9QbipjxGz6Z6FH0N5CdLfY9F5EZsJD3UzAeBoxMKU1O6mOa3RNoJ1LVqpgzWwY734GoO3qwDavUJ6vKpwZrnBL5BYtMvK3wdmsIGe1q13mdaxtF16loiL3Fv0gbFBML2dDKso2T63K6yh3Jluw7327VabvlDFDtB3NS3HrP8g0qmznd5ix82Me-51jwmtxZFd6oA_emzNXt7xgs-YBu8YB6W-UzS6da2OSPqrHGYurZuVfxm0aEaVqlS1taqTfWbEQ-M-1eYBqPMgn2UphsAhZbkT3X16bIMm8vHzu6iW9qpQZv0C9LM9OrI8Er0wiajwAnguhTQ8DNqEZoHZNzbA_8rmQ_DHcCdo1JHRseylMClWtmlIt-xsCWZT69ZBq0jE8NEt6vs4YnHYRQGjJvvj29EFV5DR9TD41UsgSOZqRvmuzMU4thpp8P8XZFxyl3dcwOPLuk5XGI6G6O8kCLcvM4f_E8BoB3aqEeDCyuLE1FtMJqaTy-cs_1k4KsF6JGl20QnE9APYRKAUXeVmdkMcjPYFA4NvZypriOE2x2RjOtM8F363LwcW7cpXYSi8v4eMB2GBdteNWDEm1F2vRCf2HZWIQ1YbeH7FgwALRsiRL5cLr0qkcCxOOOu-3JbGMk-KL4IPuPGUQCvr8M1NqYNrVoha0Ym4s33SQ1KJTdcXADY1k8ZzzH-4PUebK5Di5MnS8KCRrx3TqVXvHRRCyXsIX830NOlPX8z8TytdLGFUMg4yYuPUnryZAkP8fAIg4xPxTNWtFVa8T0EodW6HIZ6xC_1BrajpMpHgzuwgr0Sw7nbVzAxQPQM89UwiMiMj_EJLWlG8Qpj58om95gvPtDFrP4xQBHl8F-97Bd_92cZCQ51TrJHsD5kVFrzSCWnq3c9lQk-DcWgpgHkoj4nE1tr6YCkV0CNNyp8j.BIGUIZggj9DzjKtx34FD9a9Ec9BUqrhFL9l2YQ6qjOY"

payload='{"instructedAmount":{"amount":"1","currency":"EUR"},"creditorAccount":{"iban":"AT861921125678901234"},"creditorName":"Laura Musterfrau"}'

payloadDigest=`echo -n "$payload" | openssl dgst -binary -sha256 | openssl base64`
digest=SHA-256=$payloadDigest
echo "Digest: ${digest}"

reqDate=$(LC_TIME=en_US.UTF-8 date -u "+%a, %d %b %Y %H:%M:%S GMT")

reqId=`uuidgen`

signingString="(request-target): $httpMethod $reqPath
date: $reqDate
digest: $digest
x-request-id: $reqId"

# signingString must be declared exactly as shown below in separate lines
signature=`printf %s "$signingString" | openssl dgst -sha256 -sign "${certPath}example_client_signing.key" -passin "pass:changeit" | openssl base64 -A`

# Curl request method must be in uppercase e.g "POST", "GET"
curl -i -X POST "${httpHost}$reqPath" \
-H "Accept: application/json" \
-H "Content-Type: application/json" \
-H "Digest: ${digest}" \
-H "Date: ${reqDate}" \
--user-agent "openbanking-get-started/1.0.0 bash" \
-H "TPP-Redirect-URI: https://example.com/redirect" \
-H "PSU-IP-Address: 37.44.220.0" \
-H "X-Request-ID: ${reqId}" \
-H "Authorization: Bearer ${accessToken}" \
-H "Signature: keyId=\"$keyId\",algorithm=\"rsa-sha256\",headers=\"(request-target) date digest x-request-id\",signature=\"$signature\"" \
-d "${payload}" \
--cert "${certPath}example_client_tls.cer" \
--key "${certPath}example_client_tls.key"