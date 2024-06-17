#!/bin/bash

###################################################################################
#                             CALL AIS BALANCE  					              #
###################################################################################
# This script calls the AIS API in sandbox and performs a get request to the-     #
# endpoint "v3/{account-id}/balances" for account balance. You must request       #
# customer access token to call this script.   									  #
# Please update the variables "accessToken" and "certPath".   					  #
###################################################################################

keyId="5ca1ab1e-c0ca-c01a-cafe-154deadbea75" # client_id as provided in the documentation
requestId="33a298e6-44c7-481f-94ae-fdc0321fcff3" # Request identifier 
certPath="./certs/" # path of the downloaded certificates and keys
httpHost="https://api.sandbox.ing.com"

# httpMethod value must be in lower case
httpMethod="get"
# first make a call to AIS Account to obtain URI for balance endpoint
reqPath="/v3/accounts/34dea1a9-0543-4711-b105-3492d1bbc8f6/balances?currency=EUR"

# Digest value for an empty body
digest="SHA-256=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU="

# Generated value of the customer access token. Please note that the customer access token expires in 15 minutes
caccessToken="eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwia2lkIjoidHN0LTRjOGI1Mzk3LTFhYjgtNDFhOC1hNTViLWE3MTk5MTJiODNkMiIsImN0eSI6IkpXVCJ9..LnkrCUT3p-0ijvTAwO8cfw.86-tXWWJxgQjapc5BUGWSeAjAoaJQAqkCkouNd3HgznJXTVCKrul3Cq1mTiw65XSQyKIk9hbwUt8KhSDm9_rLwPwz_x3hbsStvD41zGak6Rlcnm2iZ06IpDkJFjk4j_9MX_2T1zoTmu3bzjJs6Ah9t1H_h9R5lyGMVwyHz9LP76yiTZFKU5pl7GfLrtd9mPJl9sn2rAJQZVFCmD2v7SL2iF-GwvXobLDuT6GYsm6_V21sLyAasSHoqQaJKN-KDSNSsJ2Luc4L_pbGQcZZcz_3KWWIULlS2YMDgfZGmsRkPfWpNsuE13hnZLm91ToQCfMt9V9tRKJzV36cFRudgeiRVHgWrFfOL3Vn_DsLmtAnm5m4l7pnULvCr0ZkcDO7InRTgPPcr3vTQxciB1M_MNsDhVnHf3bZGc2AfmTu_nCbhfwWDa6Zwb3O2NE3-f9LCIgVHNufEzRRhyy-FEjoopD09WrIrQ74Ql3ef7W-E-jme7OJOsOFdDu-4AwJGjdgKTqydJR9AQFwr_WOJg3gQvpzA7N_akSotWY1XYw0uLN8HHHfmnX25PFvdSH9VBB8uTCSWbnec0NgoHYmQoH7SlCUHH_7NEwq0WttokXAeangF1YV6n6Ms6M5quRAJYPenXLwe781-pSgLM_A5n9Fn9diG1PTpVWqyiPZUbxgs0iob3aRmqwo117STEbBtSyLzUpjh7Rip79-JxX6Y_tAel5E2hTI1JbRNYYpLXfQKWiY3gka464iv3If0L8rzp0fmRvIo4lzxRyQFeI173GtUpVucNo1L0XEEk2SX4X8u4s6bdr10v5DfdM53BoBUbTNUN4Z2GRQIBALKj5MhVM4MGnXpBB52Fcp8fMhID8B273nel6e_0Nx7ab5M44O6Ajfg9Ac0ATrsWQIn5efzJ51fzAhP9k52DEPm-k_3zfJV19GsDAAssqnNADVz4PiSoXcirNPxEISXgksRqkXHi3vfvtpeOG2arh94YmQkGl7Zdd_XIdLQh61GqHGLVtwdyeMS2MbnDhy-oAlHuHMfIfxOANuxzgZgcm2npgTXsCTkXlf9tUNIqp15_1p7QJOOrYx8t3mYN8P4EvUVWnrBQLqwo_N4qPH5lw7OpFlsfwGb35VYeE5gwB0XMtXQ6pnciy0VSiArQNIErBE7qaCgiXsIVrxBXa3xxO4HWXWIlrm2F7Ral-wgup2ZPv1qgXWVR9o-Q6xM5RNGptU-Vs3APCoSn5u7kd4eJ9P-uCyVr0-2vBJ2RZJPZPJ8_5wBKR3bHjOmbiqM1cj8aqynqtgNdOJQiuMulxMPvylJPfB7Tn-9gDeR5smDI8yjMt8slgQCBIUruLAsIF4NfVZVHe2_lwfhp4TXnyImIGRwoMPJyfky4SWDFnvqawAtbKq8Mw-PN0YtmP339G0N_zrwdmIiNS0bUdbJxzq94pG7DTE4oKQ9IF7bI1OIJKR52hgY3fg1NbIwP5pMIVNYLAWaClVesHFdyZnSWv0JSmbWlpOpxOKjTuM8QqEK0Lk59dhgEHiPjEx_hJ1KAjk0h6GHPwxKSBldSgPFNAJta6D-CeOWac9ybIxBU1342m7b4CbE-Hkkak87JTrsDRxjb4RlfmRLxTVGnYlEaPsdteXVvdrmVHOoeHyLpCdYpe6_ehSAOQIUCp3ToAVubwCoBCeGUwySVgU-z2-gKMXjEFW1y4QmVUjqzsy4K-muirwEKwvSpV5cQzDxLdiePnNP-JUBlhuUNFW91MwNy_YMPPuUoOulC-9BFSxYYIiaC4LcIvksyyg3QFCDODz3NDY10LoVx6NHN25VMM8qhxdhqTgbTEa73LKIVyca7Q59dKwobN8l3jqIyFcw8fIxef407GaR9aIPyAYtGzNEtNLHD4PVVphA2tKAG067pkWbruNH3YWO__1_qer7sl_2SCbeYVzJ1uFG1sAFou-AwxDftaoTph0ZdS0A-HRp4Z8mtKw25Rh4qNLgX4uz7wQRfWCGowPZVfZebQ8fWM912i1yb-tiPxgxZFnZAuhCWFsFNAWbuvcRyrjz1mTFVWaJ6ihpZNhKaKNDw-XrLcanTUvaHiFq-x5fC6MrChR21eEXhzhO2DL7u0MDQGupZhCO7YO6CvNf0j64O93I4d0rS39EpVRSEkOUhdUiA2JmN-RMmDBbvH5Tac8praMXMa8YcgnIhMC312PLLouC1N1QCfZruYIqzz1Qb1_ArzRxhPOfDHDYO9WjwmCWJ0TyPynfBPvY8yeo0GyOuQgbrQlcr_QeLYO34VnEHL0VgOXHYxlG6_yY4OiJa18mOBWVbsKFcEKCOvRATZ0kHDnJmmxq5BYmZ9kRx38t5HT2Kipia3JU2f9pECfiKQ6GCGVEjDZSMUAIH36BOW5Y1js7i7R4ILG8iSImUWAl9rpt2Cv_TL59gCmcHiR-V-iZpNP16VqO4yEgINM9pZvMThrcx-pjaofJW_jYao_LwWjI6Pjm85bhWx2BjzGMd1yytfMtEPJjwvnG1oYDZxtCIKmoc3gKQIPNQNuveUiJE5iWI7A6YvZBTz5IVqbF0AvDcv35cBuIkTVBO9yUttzPatLT69thODkiypAdaRG5AlvmbhNgNTnD6FBShyJ9U-4vP4hjapGf1skVHjPQZ7ynPxMpke9YF59FhXLea_8bEUnkqOYrkxOGQgn8yWRVLOZMZWhsZmQJpNHo72r6Uhpa730PJydbLcPyhIGMGacxvIEKsHqI0yDaWQaz7SeKGydPgpCOFvj-HClLnx2WxiHKM4Bwdr8gnvuxv3wo_S3hMXSFTifTTUJxVtcCfq7WXQsVjVmkheHlo5df4cajj6KaJhKVWc2_6kqw6quhPieKFFS7cXKnkAArqqEompchtF29-cgTO3CDLjPL7z_dCFu_WHx5SF70pEPMZupgy6ckWcIYWWI9V8j6plEJTdmwpinj-ywVwAUxFtPWZHq4Jm5vI0BE-wMNGg2l8n3z2hXi5OjrKyXfcG_LBNOM0ueDi0W_DvzVsy.M_IwZmFjOy0rGaMWQ_FgIlfMJBRVRe60GAAEqylfeW0"

reqDate=$(LC_TIME=en_US.UTF-8 date -u "+%a, %d %b %Y %H:%M:%S GMT")

# signingString must be declared exactly as shown below in separate lines
signingString="(request-target): $httpMethod $reqPath
date: $reqDate
digest: $digest"

# signingString must be declared exactly as shown below in separate lines
signature=`printf %s "$signingString" | openssl dgst -sha256 -sign "${certPath}example_client_signing.key" | openssl base64 -A`

# Curl request method must be in uppercase e.g "POST", "GET"
curl -i -X GET "${httpHost}$reqPath" \
-H "Accept: application/json" \
-H "Content-Type: application/json" \
-H "Digest: ${digest}" \
-H "Date: ${reqDate}" \
--user-agent "openbanking-get-started/1.0.0 bash" \
-H "Authorization: Bearer ${caccessToken}" \
-H "X-Request-ID:${requestId}" \
-H "Signature: keyId=\"$keyId\",algorithm=\"rsa-sha256\",headers=\"(request-target) date digest\",signature=\"$signature\"" \
--cert "${certPath}example_client_tls.cer" \
--key "${certPath}example_client_tls.key"
