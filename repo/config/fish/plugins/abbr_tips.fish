: '
 - Create abbreviations in a hierarchy of parameters. The match will be closest to the entered command.
'

: ' ----------- GIT FORGIT------------ '

abbr forgit-add 'git-forgit add'
abbr forgit-branch-del 'git-forgit branch_delete'
abbr forgit-cherrypick 'git-forgit cherry_pick_from_branch'
abbr forgit-checkout-file 'git-forgit checkout_file'
abbr forgit-diff 'git-forgit diff'
abbr forgit-fixup 'git-forgit fixup'

: ' --------------- GIT -------------- '
abbr git-diff-stat 'git diff --stat'                         # show changes as statistics
abbr git-diff-base 'git diff --base'                         # show changes from base i.e. common ancestor
abbr git-diff-theirs 'git diff --theirs'                     # show changes from theirs i.e. remote
abbr git-diff-ours 'git diff --ours'                         # show changes from ours i.e. local
abbr git-diff-else-lock 'git diff -- ":!package-lock.json"'  # show changes excluding package-lock.json
abbr git-diff-cached 'git diff --cached'                     # show changes in cache
abbr git-diff-main 'git diff main'                           # show changes from master
abbr git-diff-word 'git diff --word-diff'                    # show changes in words
abbr git-diff-patch 'git diff --patch'                       # show changes in patch
abbr git-diff-raw 'git diff --raw'                           # show changes in raw
abbr git-diff-exit 'git diff --exit-code'                    # show changes in exit code -
abbr git-diff-name 'git diff --name-status'                  # show changes in name status

abbr git-add 'git add .'                         # add all changes in current directory and subdirectories
abbr git-add-all 'git add -A'                    # add all changes in current directory and subdirectories
abbr git-add-file 'git add'                      # add file changes
abbr git-add-iter 'git add -p'                   # add changes interactively
abbr git-add-verbose 'git add -v'                # add changes verbosely

abbr git-commit-amend 'git commit -a --amend'    # amend last commit i.e. change commit message
abbr git-commit-m 'git commit -m'                # commit with message

abbr git-checkout 'git checkout'                 # checkout to branch

abbr git-switch 'git switch'                     # switch to branch
abbr git-switch-new 'git switch -c'              # checkout to new branch

abbr git-pull 'git pull'                         # pull changes from remote

abbr git-push 'git push'                                                    # push changes to remote
abbr git-push-head 'git push -u origin $(git rev-parse --abbrev-ref HEAD)'  # push changes to remote
abbr git-push-all 'git push origin main --all'                              # push changes to remote main
abbr git-push-main 'git push origin main'                                   # push changes to remote main

abbr git-status 'git status'                                                # show git status

abbr git-reset 'git reset'                            # reset added changes to working directory

abbr git-show 'git show'                              # show git commit
abbr git-show-word 'git show --word-diff --stat'      # show git commit with word diff and statistics
abbr git-show-color 'git show --color-words'          # show git commit with color words
abbr git-show-diff 'git show --word-diff'             # show git commit with word diff
abbr git-show-stat 'git show --stat'                  # show git commit with statistics

abbr git-branch 'git branch'                          # show git branches
abbr git-branch-del 'git branch -D'                   # delete git branch
abbr git-branch-show 'git branch -a'                  # show all git branches
abbr git-branch-rename 'git branch -m'                # rename git branch

abbr git-rebase 'git rebase'                                                 # git rebase
abbr git-rebase-iter 'git rebase -i'                                          # git rebase interactive
abbr git-rebase-head 'git rebase origin/$(git rev-parse --abbrev-ref HEAD)'   # git rebase origin current branch

abbr git-fsck 'git fsck'                              # git check orphaned objects
abbr git-gc 'git gc'                                  # git garbage collect

abbr git-log "git log --pretty=format:'%C(yellow)%h %C(blue)%d %C(white)%s %C(cyan)%cn %C(green)%ad' --graph --date=format:'%Y-%m-%d %H:%M:%S'"  # git log pretty format

abbr git-patch-format 'git format-patch'              # git format-patch HEAD~1..HEAD)
abbr git-patch-apply 'git am'                         # git apply patch e.g (git am < patch.patch)

abbr git-reset-back 'git reset HEAD .'                # Use after 'git add'. This will back to working directory
abbr git-discard-all 'git checkout -- .'     # This will discard all changes in working directory
abbr git-clean-fire-untracked 'git clean -f -d'       # This will remove all untracked files and directories

: ' ---------- LINUX ----------------- '
abbr mk 'mkdir -p' # Create a directory if it does not exist
abbr free 'free -m -h' # Show memory usage in human-readable format
abbr cc 'xsel --clipboard --input' # Copy output to clipboard
abbr pp 'xsel --clipboard --output' # Paste clipboard content
abbr c 'clear'
abbr fcf 'fc-list | grep -i <font>'
abbr fcc 'fc-cache -fv'
abbr makelog '2>&1 | tee build.log' # Run some command and save output to build.log e.g make 2>&1 | tee build.log
abbr copy 'xclip -sel clip' # Copy output to clipboard
abbr paste 'xclip -sel clip -o' # Paste clipboard content
abbr cat 'bat --color=always --style=plain' # Use bat to display file content with syntax highlighting

: '------------- FZF ----------------- '
abbr fdz 'fd . | fzf --multi --preview "bat --color=always --style=numbers --line-range=:1000 {}" -- --preview-window=right:70%:wrap' # Find files with fd and preview with bat
