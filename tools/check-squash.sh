#!/usr/bin/env bash

echo PRE_COMMIT_IS_SQUASH_MERGE="$PRE_COMMIT_IS_SQUASH_MERGE"
echo BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

if [[ "$PRE_COMMIT_IS_SQUASH_MERGE" != "" ]]; then
    if [[ "$BRANCH_NAME" = "main" ]] || [[ "$BRANCH_NAME" = "develop" ]] || [[ "$BRANCH_NAME" = release* ]] || [[ "$BRANCH_NAME" = hotfix* ]]; then
        echo Squash merge is not allowed when merge from a git flow branch
        exit 1
    fi
fi

