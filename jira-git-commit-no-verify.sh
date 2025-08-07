CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
IDENTIFIER="$(echo $CURRENT_BRANCH | grep -Eo '\w+-\w+' | head -n1)"
MESSAGE="$*"

if [ ! -z "$IDENTIFIER" ]
  then MESSAGE="$IDENTIFIER: $MESSAGE"
fi

git commit -m "$MESSAGE" --no-verify
