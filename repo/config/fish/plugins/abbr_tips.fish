: '
 - Create abbreviations in a hierarchy of parameters. The match will be closest to the entered command.
'

: ' ----------- GIT FORGIT------------ '

abbr gadd 'git-forgit add'
abbr gbranch-del 'git-forgit branch_delete'
abbr gcherrypick 'git-forgit cherry_pick_from_branch'
abbr gcheckout-file 'git-forgit checkout_file'
abbr gdiff 'git-forgit diff'
abbr gfixup 'git-forgit fixup'

: ' --------------- GIT -------------- '
abbr gdiff-stat 'git diff --stat'                         # show changes as statistics
abbr gdiff-base 'git diff --base'                         # show changes from base i.e. common ancestor
abbr gdiff-theirs 'git diff --theirs'                     # show changes from theirs i.e. remote
abbr gdiff-ours 'git diff --ours'                         # show changes from ours i.e. local
abbr gdiff-else-lock 'git diff -- ":!package-lock.json"'  # show changes excluding package-lock.json
abbr gdiff-cached 'git diff --cached'                     # show changes in cache
abbr gdiff-main 'git diff main'                           # show changes from master
abbr gdiff-word 'git diff --word-diff'                    # show changes in words
abbr gdiff-patch 'git diff --patch'                       # show changes in patch
abbr gdiff-raw 'git diff --raw'                           # show changes in raw
abbr gdiff-exit 'git diff --exit-code'                    # show changes in exit code -
abbr gdiff-name 'git diff --name-status'                  # show changes in name status

abbr gadd 'git add .'                         # add all changes in current directory and subdirectories
abbr gadd-all 'git add -A'                    # add all changes in current directory and subdirectories
abbr gadd-file 'git add'                      # add file changes
abbr gadd-iter 'git add -p'                   # add changes interactively
abbr gadd-verbose 'git add -v'                # add changes verbosely

abbr gcommit-amend 'git commit -a --amend'    # amend last commit i.e. change commit message
abbr gcommit-m 'git commit -m'                # commit with message

abbr gcheckout 'git checkout'                 # checkout to branch

abbr gswitch 'git switch'                     # switch to branch
abbr gswitch-new 'git switch -c'              # checkout to new branch

abbr gpull 'git pull'                         # pull changes from remote

abbr gpush 'git push'                                                    # push changes to remote
abbr gpush-head 'git push -u origin $(git rev-parse --abbrev-ref HEAD)'  # push changes to remote
abbr gpush-all 'git push origin main --all'                              # push changes to remote main
abbr gpush-main 'git push origin main'                                   # push changes to remote main

abbr gstatus 'git status'                                                # show git status

abbr greset 'git reset'                            # reset added changes to working directory

abbr gshow 'git show'                              # show git commit
abbr gshow-word 'git show --word-diff --stat'      # show git commit with word diff and statistics
abbr gshow-color 'git show --color-words'          # show git commit with color words
abbr gshow-diff 'git show --word-diff'             # show git commit with word diff
abbr gshow-stat 'git show --stat'                  # show git commit with statistics

abbr gbranch 'git branch'                          # show git branches
abbr gbranch-del 'git branch -D'                   # delete git branch
abbr gbranch-show 'git branch -a'                  # show all git branches
abbr gbranch-rename 'git branch -m'                # rename git branch

abbr grebase 'git rebase'                                                 # git rebase
abbr grebase-iter 'git rebase -i'                                          # git rebase interactive
abbr grebase-head 'git rebase origin/$(git rev-parse --abbrev-ref HEAD)'   # git rebase origin current branch

abbr gfsck 'git fsck'                              # git check orphaned objects
abbr ggc 'git gc'                                  # git garbage collect

abbr glog "git log --pretty=format:'%C(yellow)%h %C(blue)%d %C(white)%s %C(cyan)%cn %C(green)%ad' --graph --date=format:'%Y-%m-%d %H:%M:%S'"  # git log pretty format

abbr gpatch-format 'git format-patch'              # git format-patch HEAD~1..HEAD)
abbr gpatch-apply 'git am'                         # git apply patch e.g (git am < patch.patch)

abbr greset-back 'git reset HEAD .'                # Use after 'git add'. This will back to working directory
abbr gdiscard-all 'git checkout -- .'     # This will discard all changes in working directory
abbr gclean-fire-untracked 'git clean -f -d'       # This will remove all untracked files and directories

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

: '------------- FZF ----------------- '
abbr fdz 'fd . | fzf --multi --preview "bat --color=always --style=numbers --line-range=:1000 {}" -- --preview-window=right:70%:wrap' # Find files with fd and preview with bat
