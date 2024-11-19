: '
 - Create abbreviations in a hierarchy of parameters. The match will be closest to the entered command.
'
: ' ------------ GIT DIFF ----------- '
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

abbr git-patch-format 'git format-patch'              # git format-patch HEAD~1..HEAD)
abbr git-patch-apply 'git am'                         # git apply patch e.g (git am < patch.patch)

abbr git-reset-back 'git reset HEAD .'                # Use after 'git add'. This will back to working directory
abbr git-checkout-discard-all 'git checkout -- .'     # This will discard all changes in working directory
abbr git-clean-fire-untracked 'git clean -f -d'       # This will remove all untracked files and directories

: ' ---------- LINUX ----------------- '
abbr mk 'mkdir -p'
abbr free 'free -m -h'
abbr cc 'xsel --clipboard --input'
abbr pp 'xsel --clipboard --output'

: '------------ CODE ------------------ '
abbr . 'code .'
abbr c 'clear'
abbr fcf 'fc-list | grep -i <font>'
abbr fcc 'fc-cache -fv'

: '------------ NixOS ---------------- '
abbr nx-nre 'sudo nixos-rebuild switch --flake .#rwietter &| nom' # Rebuilds and activates the NixOS configuration using a specific flake.
abbr nx-hms 'home-manager -b backup switch --flake .#rwietter &| nom && awesome-client "awesome.restart()"' # Updates and activates the Home Manager configuration with backup and a specific flake.
abbr nx-hlp 'command-not-found' # Displays suggestions for unrecognised commands.
abbr nx-sgc 'nix-store --gc --print-roots | egrep -v "^(/nix/var|/run/\w+-system|\{memory)"' # Performs garbage collection on the Nix store, excluding certain paths.
abbr nx-build "nix-build --no-out-link &| nom" # Runs a Nix build without creating output links.
abbr nx-gc "sudo nix-collect-garbage --delete-older-than 5d"
abbr nx-hup "sudo nix-channel --update && nix flake update nixpkgs && home-manager -b backup switch --flake .#rwietter &| nom" # Updates the Nix channels and Home Manager configuration with backup.
abbr nx-up "sudo nix-channel --update && nix flake update nixpkgs && sudo nixos-rebuild switch --flake .#rwietter --upgrade" # Updates the Nix channels and NixOS configuration with a specific flake. <https://discourse.nixos.org/t/how-to-get-latest-nixpkgs-unstable-properties/21547/2>
abbr nx-stc "nix-store --gc" # Performs garbage collection on the Nix store.
abbr nx-sop "nix-store --optimize" # Optimises the Nix store.

# Flakes
abbr nx-flake-templates "nix flake show templates" # Lists the available flake templates.
abbr nx-flake-template "nix flake init -t templates#<template>" # Initialises a new flake using a specific template.
abbr nx-gen-rm-old "nix-env --delete-generations old" # Removesa all old generations of the Nix store.
abbr nx-gen-rm-3d "nix-env --delete-generations 3d" # Removes all generations older than 3 days.

# Cleanup
abbr nx-cleanup "nix-collect-garbage -d && sudo nix-collect-garbage -d && nix-env --delete-generations +3d && nix-store --gc && nix-store --optimize"za

: '------------- FZF ----------------- '
abbr zat 'fd . | fzf --multi --preview "bat --color=always --style=numbers --line-range=:1000 {}" -- --preview-window=right:70%:wrap'
