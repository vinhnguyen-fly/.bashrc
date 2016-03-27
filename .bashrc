parse_git_branch() {
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  echo "[$branch]"
}
