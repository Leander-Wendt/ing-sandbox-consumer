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
authorization_code="4bc63f49a49b84523a4571edb4cbf8597fde4880e25d917694a5aec167385878d6dc4e1402cb41818a043f02aaf1cff2"
# URL encoded value of http://api.example.com
redirect="http%3A%2f%2fapi.example.com%2f"

# Generated value of application access token. Please note that the access token expires in 15 minutes
accessToken="eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwia2lkIjoidHN0LTRjOGI1Mzk3LTFhYjgtNDFhOC1hNTViLWE3MTk5MTJiODNkMiIsImN0eSI6IkpXVCJ9..GktUHsGD3q8iIaSKgZuoOw.OMeEHQ2fnicfuzufmRiOmIf3jiSlBYhse79HdscupwL3ZvORbjYpOb0g4dKi9QT1YoyPznXphz9OP5WH9wMlwmdbqEMvcf0ln5Qsd3JXDS_gzbRQ5tif2z_p_lhy9tOOhXguq3d8h_pUkaX2LXYZUKxNpLsOl16I-7xUSucLB2IgpmIK0ObTGXFaYCID-STT9hgIQXR7DW8AhPU9bW1W-07J2291TeIX51cEzVEMENSk1CGXnYbFM277zbZ-LsTeBzjQ1Ocu8rpfbjRb9pKgU_G-GqZ5ijD75OmYNRbzMz_viOavnY-Lu1qmuYZ6JOQRbM7pAvq5INCFkpX6jdPom05uOdGdc_vgKDmCz0taVeknNcyJrxMtvJab2VbbqPG3tlmLKSbxQcLTRZ9OLZo1T_IPbfO_SKuJ2o9e8laFT6XQs0gRA_bRnN2Zs_Qef6hLT4F0eLX1WjooajcmusMoHyqWn1hcgnW14mxNxnscFjecyXyGPO9ZHqTjccsSKn1O-17boBNQzcwltZBSwkab9XHCNORs9V7MV-LLoa42FxqXx4iqtVDAAmjM-YUnEnH22zolRWCQKDRW567h45uB4GyDW7PEQauMK2Yq9rMQzlJGj6lhnVwiokYvzLx-i1VjYsqqIAkeVMcJXVPT2dQodI4TLRdJsoDZeN6xjf-qHbFFGKHMO0ttfb2OrWOTooPU-kzCJaok4Jr-7rtOQ76NKDs5aOmZWzZ_I5mem3Ssx4PAHDb5-CQVUDOfl2amdJlqkZhGBFiWjD7mTFbXTydOmO9jXCgnCHCytat5D0lAX-8kYXh-fsIeojyEXDydILZxPos7c_qVwEI0aojIQMMTD5al16eULTiiTO-TSJA-R7HZ-utQMR7XzW_msRC-f6tTW0cgOgps6bpHZKnU6-VtmdnqhhjA085ogS2QYo86s5qvoq8Ssci0cQUGPtQs5FMUM7kFDBfKAu8Fgsa-w66DWcVpLRJZjntAFHygfdK0Ni0LLzCJibTcDoNNOSlUr_qG4FEsZSdNg_8CSfUnz87tkwzEQpxkKkPsBaEwWE35-Qhz3qB5JBWxjrn1ZZ4IBbNfqNX9JnXMcYQTTSbKDlXzKGA3xRziCCT6hzAu-sehqlwT_8lmzJmTwSLLC-vPkUOxzBQaBm2OqGuKYS3K9f8hLi-FeXkuxbtq9ovt4oysO0IWpP-TTEbk54sfCIYB6UXk8znc5v2uLWa0Wh6Gjdv-pQ05h6qBOazg-Pzmjm4XB7Iu-ryIrzW1IHTsvRnPwuLrCT0DTiBN3GQ-AuTt3o10QmPEjO-lPkgbqtoT575kFBPp2uOy4TdNE99IQYGtX49whXTa0kzFJJptWou-OUwA_tPD4HwKyf8VzKxkTe-GCxv6RxIcRA8DaQggwg8mSj6bY1aHbW3HD_cymYzv_cz2wEzL__TDxpc2M1_N09RogRIjMapG-cddrWNa11Aa3_MlTRDRrsnpKSDJ7FPL8flPgZetIGfWRgIbzm2ahYAPYH5SK6AarTQCt8LlwZpPccmNcQ_7GCaTscY2sjMU_uiVkG_QSog8N8rlEoZ3OB8iGX7jpoQXYlkJixta6eqGUvz2sd1mt-F8oLzP-2W5N9eI_Wb7V5-iCRoUyOhgIVwIEHnB8Vf77AfR81jJljm_yotpXBdaLtapFmSUc13ya4pHZsL8WmEN1URyBOPJ1cS7nSOW6BoxEO1XHy2tFl8buh1Q7wnyRyWxfcyO0bAvIZF_HxwoS9pFZe5rqOMCPKXn_yr3rSIuFEAP23xrOLtn5pi2CExesFrwBOXouiknHya74iGFqqqcnRwvWM8kaLamRakwnNGRUQlsUp70QzyD0vuAFArrjKNdEg7hDwXsQw543sjnm6BNxUZHD_m5G1TsxHjghbyOyhFy4qhOa69N8NkhTCB-2xhtG3HgiJlE1AmMFvwxtT8hv8tGo8muU6GuXt5tgJnfaVjH6nU0F8I4M7_Qz3py8LR_bzwv5UTH0n3PSSL5wG9fWgEN020Q4hHL_KorJlW1XhietjkEo8p4oowsYpwFNDLeAuactmF0rJId07Q0W53cBN4k4EOwbWnPILHoi7BMVERKb7jKVOzYadqil_lvtUJObkd6NfO4v7xTJApLBQOGxz5hLpdEhFoDo_7A9KQSE6IO9aihwRb_BhsIeStms-Zwhy8TVBecC1Rw9iDnqPUlmP1ak25WawcB5-03F7Ok0jl4uuprQiM_kzWvK4zN2Fjz82m13czZgltakOR60M0wZQKvmCObjCuHZsgRBnH2ULPkAsHQtD10kGt3MHIN8SQmTVeUrPE-lLKNWIORZLvcgh5XyCoivcj2C55VQelLckPNRG-O78q8YdFd7VMpd4WH7WIGJylOHRbdH7afi2t4CapHJuf3wD1xZyb5dNhzNF6G_gzZheLi4o3jZO--xTXQaxR3lsJp4BkJJrAIU91MrUhi6-Xl1G6MaRGRT2exngfnrwHD2vK1FEx-LROMNFGa2rb5Rh5gKBRo99Em2C7R4T964d7MgxYg_iZZ5yIE4JhP41X5ZqfqiiCyvoT3xLY5CPmk9PHldT9AZrfeWC6O561afApYo138eEE.dtuR76nWu1onBaFafrIl10IJZbPe_fzULuhJ5HEPtos"

# AUTHORIZATION CODE MUST BE PROVIDED AS A VALUE TO THE "code" PARAMETER IN THE PAYLOAD.
payload="grant_type=authorization_code&code=$authorization_code"
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
