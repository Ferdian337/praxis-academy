# e, edit <commit> = use commit, but stop for amending
# s, squash <commit> = use commit, but meld into previous commit
# f, fixup <commit> = like "squash", but discard this commit's log message
# x, exec <command> = run command (the rest of the line) using shell
# b, break = stop here (continue rebase later with 'git rebase --continue')
# d, drop <commit> = remove commit
# l, label <label> = label current HEAD with a name
# t, reset <label> = reset HEAD to a label
# m, merge [-C <commit> | -c <commit>] <label> [# <oneline>]
# .       create a merge commit using the original merge commit's
# .       message (or the oneline, if no original merge commit was
# .       specified). Use -c <commit> to reword the commit message.
#
# These lines can be re-ordered; they are executed from top to bottom.
#
# If you remove a line here THAT COMMIT WILL BE LOST.
#
# However, if you remove everything, the rebase will be aborted.
#
# Note that empty commits are commented outpick 8aea9be Added jack-be-nimble.txt.
pick 9e48a45 Added mother-goose.txt.
pick fbe874e Added old-king-cole.txt.
pick 642477c Updated README.txt.
pick b7e5732 Fixed typo in README.txt.
pick d1ba481 Updated README.txt.
pick 6256b8a Updated README.txt.
pick 77886c1 Updated README.txt.pick 8aea9be Added jack-be-nimble.txt.
pick 9e48a45 Added mother-goose.txt.
pick fbe874e Added old-king-cole.txt.
pick 642477c Updated README.txt.
squash b7e5732 Fixed typo in README.txt.
squash d1ba481 Updated README.txt.
squash 6256b8a Updated README.txt.
squash 77886c1 Updated README.txt.$ git log --oneline
80e8a59 Updated README.txt.
1d57351 Added old-king-cole.txt.
9e48a45 Added mother-goose.txt.
8aea9be Added jack-be-nimble.txt.
4b15370 Added hickory-dickory-dock.txt.
4ada881 Added old-mother-hubbard.txt, twinkle-twinkle.txt, hokey-pokey.txt
10e0e68 Added jack-and-jill.txt.
6a69e0f Added all-around-the-mulberry-bush.txt.
d30493a Added project overview to README.txt
710f4bd First commit.
