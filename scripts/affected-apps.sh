CURRENT_REMOTE_BRANCH_NAME=$(git rev-parse --abbrev-ref --symbolic-full-name @{u})
echo Current remote brunch name: $CURRENT_REMOTE_BRANCH_NAME

REMOTE_BRANCH_HEAD=$(git merge-base $CURRENT_REMOTE_BRANCH_NAME HEAD)
echo Remote brunch HEAD: $REMOTE_BRANCH_HEAD

LOCAL_BRANCH_HEAD=$(git rev-parse HEAD)
echo Local brunch HEAD: $LOCAL_BRANCH_HEAD

echo npm run affected:apps -- $REMOTE_BRANCH_HEAD $LOCAL_BRANCH_HEAD
npm run affected:apps -- $REMOTE_BRANCH_HEAD $LOCAL_BRANCH_HEAD

