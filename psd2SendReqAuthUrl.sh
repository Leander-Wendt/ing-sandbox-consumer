#!/bin/bash

###################################################################################
#                             REQUEST URL TO ING AUTHORIZATION APP                #
###################################################################################
# This script calls the endpoint "oauth2/authorization-server-url" to request     #
# an authorization code for requesting customer access token. In this script      #
# we pass "payment-account:balance:view" and "payment-accounts:transactions:view" #
# scope tokens to consume AIS API. You must request an application access token   #
# to run this script. Please update the variables "accessToken" and "certPath".   #
###################################################################################


keyId="5ca1ab1e-c0ca-c01a-cafe-154deadbea75" # client_id as provided in the documentation
certPath="./certs/" # path of the downloaded certificates and keys
httpHost="https://api.sandbox.ing.com"

# httpMethod must be in lower code
httpMethod="get"
reqPath="/oauth2/authorization-server-url?scope=payment-accounts%3Abalances%3Aview%20payment-accounts%3Atransactions%3Aview&redirect_uri=https://www.example.com&country_code=DE"

# Digest value for an empty body
digest="SHA-256=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU="


# Generated value of the application access token. Please note that the access token expires in 15 minutes
accessToken="eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwia2lkIjoidHN0LTRjOGI1Mzk3LTFhYjgtNDFhOC1hNTViLWE3MTk5MTJiODNkMiIsImN0eSI6IkpXVCJ9..qd5KrBDoAB2hwGRje9Yrow.5MUsLeLLuqGw7dev2Br3XPLFLXyZ66GjWTTzgL2J5XUcnwbZ9B0w2bTCQgWdU6IkgPkEwcnfc-iEp113_IiOxOyHxoE-OeXW7ksmdoJtqcmfk88W2z-OZj8-OZKy0_qUhOuBZnc5AN5jj-ph8a6P_sZuUfsQFMHag88j1vxjHKSBV10yNhH7ex1YVxBqPqvrDDrgqADQu1esnLdFu0xEaMeLibir67TEeI0dnWUm6yhdgbc9Re19u0zWoqW3rKTGGU7vlfahPUGhOW7pT-sWRt_JE465klkCM_HxMCaiX73z8cN0tUb_-co87aqSEKLlOivclK1yC1mqy4j7INCF3u8iake-jKl671yNgCte01Vn5H2tjhh92wkophextP6deCyJMYPsx2ERVYZBWpH4_JY-CvHXqFTn3f0T0JQxjMOeGLuXF1KEtzqOsbMHPYkQ0fkRECVMk3SDy-iO21jEH6MYfdU6aIaqRr561fFc4I7HV-XEyoHqJBalvukGhAIZovcC2-kTNW8dirjr6Qq_bi0jhpANK3WwJvfzBvXvfsAU6wvvFUUq02SDq-mjRw1N7zZl1OLr2AzrlNSbCS1tCoA3Jkn_OU5lSo7Ru5AhHIumQykA4MpEawwGnhuxOnOtr5lJDjaXcXydhPopNZevxSabqbYtas24gCuzVLloXKhkyJHiQBRCT0e6YG551Z0zA0ODhj_oShfZ91-l-SltnkhReQsS9luX1OCuOJAyI6lnnrlL5K3OP0yWkdF-q-6kACgM1SHJ3i3IMqjxVK6viNu_mHNT6y0L-vLop2pXW5P3ppfp1RHj_z5BuUJ9OlaZPYyf3nENOxFzIeA1kfmwdZq1LeP-A-azb0QbRHRsvKtNOkaNVU6nZPO6nFGAmLJ6yRKWrjFYMD5n7uvHPK0suXhTepwVxBlUf87d3TPuov-sYewV8FGPyKeD9bQzDeUZeJxbdh3V1ValVobzmc0Ht7wdQJPUJO9pfhrzeZOWnSs30xd_3Hft-U2hgjRILLjerEjgtBZRL976V4XhL4AhT0tgyRJVlPwtzCIz7LSLKZgpqwa-uQmuIEOTBCzFBzChUoNSEKYKzz-_kYzikx11u3klP14ulpk-TDtbB660NTNybm4IJ8mpWm9jitj6aH6XBzKU-swlVSGfYjaQVNFiUxipI6I_uMnHqn1LMJSBLmaiUg19nDtokP4NR9mCy3cdFVodQiKbH8CkRRH1qJoqq2nh_u3jw6FZ2jk_LYmSJu6bECMpXLd3ZXmC518IngyiFTAZmeqXt4a2kbA4S1SNjZKrz5Bv1MGFn8eANZHqLeYcl3Ykg2kVi30HMlKZxjGva5Kkhq9HzWqO8f3oMrt5xHb9l05ENU2cRwaqyjqNVldUimjFRc5sQuRBAVWOxFy3NkyGHSoT9nIE_4fh6qYqTmEHRGGLiOD6S-Tn47F4cun6utpTa8jgdtyfndVaFat1pePdiWaXG3ze0GPGE5W-0eUoYrE3AzdlGdaLe7WMIvBW7e7LOO9goj12YnDmcAeUukomjlcQAnm95iua9K3CXK0MKH-LR2jFaiCUbm6szVSbHkFrMrvo0zB3bCcDjnp9FS5-fWDgUIzoKFvxIfVcNgi_URmaFDo081rIhaMq-QqirikD5CYcBpGgZcONQ6bmc9azxsd_b3QdXt7GXTWO-Hj9VR1mrTSA4LkAlvEL0ewJFc1Jf04-JBLL5vlfg90qYpgb4VSEOALtQHX0UVx7CIjQ6CQtqVPiix-5QBRtvcZ3Xv523O_W4nh52DuS1E5wHXf82NcBixF_e-VxoyWFJ6qzq9wyojAhnHMzUudbUSrVsOaQRqomIl9zL5QtHUUjq0G4VmvUnK9N52RaWkmMIJfpLVRVmfkPnV1ekvS-roBbwJejzZdf9R_wrlusVLJyC5NFdlFQCgwVP7_icUIeSU_IYtkFec-pMkanqVHGNBtvgYlrCu-yhLG5JD5LgF7g2TAI2pGwZBXpEASPYY_JEEmmvMC1SuIEGiwvhYBs92eZpOi14YVTnEgqiHxpTouxpapLUgWM2k6fbKPX3vIxRwLMI48QNloPFV_2HWgFBxp0u6Ngj90wOSPupO3H8CD7GeqD0adyBeFC0-4Ad3A6LNXqbBb7rQXVv3unzldAsa0G87a5tY6eHGhVgOEn7UpROxvmdcab_TQTLb6kfvMfPgyeKibTG8i5Jse2x7SOAjbS7yaxoVQ1Zh7sV1ljlo_ZITazgxAFQhDBhc6e4HT4PZWXBbWiwh-CQc3uBzcdheugFYbBcNZn8hJmteFaQUqy6lSFrI-sJERH_EssD1S7In0hbfNyJp1AqKO26zlIlqwsy_wdwXHBxn4kfdWHjZlwR3qWShjD5ngyP5-kfu6jVcSNbUzMXNRp3lyVqa445UrbRK_dTI8YdhFON61mCymXDCmTBb2zErf0aouoamzDO_DBup2pZTwS0n-1Cg7uee3sQzq2Rn_DhUpNIrWoo4rwY06P0iFY-vUSubCLQ4pTCFNuVGMJ-TIx-rHK89IvdOcg7jd_dOFt8xrDMmcAq4lQFhx4buM66263u-RVCt8sXSMpK7EedCDALyWUGugNjHE.jqjphT1bMwAlhsxIT9sH4TxhGsWjqT8bLZp6oZCLnCc"

reqDate=$(LC_TIME=en_US.UTF-8 date -u "+%a, %d %b %Y %H:%M:%S GMT")

# signingString must be declared exactly as shown below in separate lines
signingString="(request-target): $httpMethod $reqPath
date: $reqDate
digest: $digest"

signature=`printf %s "$signingString" | openssl dgst -sha256 -sign "${certPath}example_client_signing.key" | openssl base64 -A`

# Curl request method must be in uppercase e.g "POST", "GET"
curl -i -X GET "${httpHost}${reqPath}" \
-H "Accept: application/json" \
-H "Content-Type: application/json" \
-H "Digest: ${digest}" \
-H "Date: ${reqDate}" \
--user-agent "openbanking-get-started/1.0.0 bash" \
-H "Authorization: Bearer ${accessToken}" \
-H "Signature: keyId=\"$keyId\",algorithm=\"rsa-sha256\",headers=\"(request-target) date digest\",signature=\"$signature\"" \
-d "${payload}" \
--cert "${certPath}example_client_tls.cer" \
--key "${certPath}example_client_tls.key"
