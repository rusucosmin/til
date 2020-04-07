# Git

## [Merging vs Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)

- They both solve the same problem: integrate changes from one brnach into another branch.

- Problem with `merge` is that it adds another commit which can quickly polute the git history on a larger team/scale.

- `rebase` will reapply the commits from the `feature` branch on the latest `HEAD` of `master`, so no other (merge) commits are being introduced, resulting in a perfectly linear project history.

- 🚨 Never rebase a public branch

### Summary

"If you would prefer a clean, linear history free of unnecessary merge commits, you should reach for `git rebase` instead of `git merge` when integrating changes from another branch. On the other hand, if you want to preserve the complete history of your project and avoid the risk of re-writing public commits, you can stick with `git merge`. Either option is perfectly valid, but at least now you have the option of leveraging the benefits of `git rebase`."
