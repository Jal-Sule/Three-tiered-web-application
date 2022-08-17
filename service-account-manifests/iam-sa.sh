#aws eks describe-cluster --name Grp13-cluster --query cluster.identity.oidc.issuer --output json
    
eksctl utils associate-iam-oidc-provider --cluster Grp13-cluster --approve
    
#aws iam list-policies --query 'Policies[?PolicyName==`AmazonS3ReadOnlyAccess`].Arn'


eksctl create iamserviceaccount \
    --name clo835 \
    --namespace final \
    --cluster  Grp13-cluster \
    --attach-policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess \
    --approve \
    --override-existing-serviceaccounts