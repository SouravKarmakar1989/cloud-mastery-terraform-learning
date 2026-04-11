# S3 Security: Bucket Policy Hands On

## Pointwise No-Loss Summary

1. Goal of demo is to make an S3 object publicly accessible through its public object URL.

## Step 1: Allow Public Access at Bucket Setting Level

1. In bucket Permissions tab, Block Public Access settings are edited.
2. Block setting is unticked to permit public access configuration.
3. Instructor emphasizes this is dangerous and should only be done intentionally.
4. Risk called out: accidental data leaks if sensitive data exists.

## Step 2: Add Bucket Policy for Public Read

1. Bucket policy is initially empty.
2. Two reference methods shown:
   - policy examples documentation,
   - AWS policy generator.
3. Policy generator workflow:
   - choose S3 Bucket Policy type,
   - Effect: Allow,
   - Principal: *,
   - Action: GetObject,
   - Resource: bucket ARN plus /*.
4. Importance of /* explained:
   - GetObject applies to objects,
   - object resources are represented under bucket ARN with trailing slash wildcard.
5. Generated JSON policy is copied into bucket policy editor and saved.

## Validation

1. Open object page (coffee.jpg) and copy Object URL.
2. Paste public URL in browser.
3. Object is now visible publicly.
4. Conclusion: bucket policy successfully enabled public read access for objects.

## Outcome

1. Learner practices full path to public object access:
   - disable blocking control at bucket level,
   - attach correct public-read bucket policy,
   - validate from public URL.
