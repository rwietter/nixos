: '
 - Create abbreviations in a hierarchy of parameters. The match will be closest to the entered command.
'
: ' ------------ GIT DIFF ----------- '
abbr gds 'git diff --stat'                                       # show changes as statistics
abbr gdb 'git diff --base'                                       # show changes from base i.e. common ancestor
abbr gdt 'git diff --theirs'                                     # show changes from theirs i.e. remote
abbr gdo 'git diff --ours'                                       # show changes from ours i.e. local
abbr gde 'git diff -- ":!package-lock.json"'                     # show changes excluding package-lock.json
abbr gdc 'git diff --cached'                                     # show changes in cache
abbr gdm 'git diff main'                                         # show changes from master
abbr gdw 'git diff --word-diff'                                  # show changes in words
abbr gdp 'git diff --patch'                                      # show changes in patch
abbr gdr 'git diff --raw'                                        # show changes in raw
abbr gdx 'git diff --exit-code'                                  # show changes in exit code -
abbr gdn 'git diff --name-status'                                # show changes in name status

: ' ------------- GIT ADD ----------- '
abbr ga 'git add .'                                              # add all changes in current directory and subdirectories

: ' ----------- GIT COMMIT ---------- '
abbr gcm 'git commit -a --amend'                                 # amend last commit i.e. change commit message
abbr gc 'git commit -m'                                          # commit with message

: ' ---------- GIT CHECKOUT --------- '
abbr gu 'git checkout'                                           # checkout to branch

: ' ----------- GIT SWITCH ---------- '
abbr gwc 'git switch -c'                                         # checkout to new branch
abbr gw 'git switch'                                             # switch to branch

: ' ------------ GIT PULL ----------- '
abbr gl 'git pull'                                               # pull changes from remote

: ' ------------ GIT PUSH ----------- '
abbr gph 'git push -u origin $(git rev-parse --abbrev-ref HEAD)' # push changes to remote
abbr gpa 'git push origin main --all'                            # push changes to remote main
abbr gpm 'git push origin main'                                  # push changes to remote main
abbr gp 'git push'                                               # push changes to remote

: ' ----------- GIT STATUS ----------- '
abbr gt 'git status'                                             # show git status

: ' ------------ GIT RESET ----------- '
abbr ge 'git reset'                                              # reset added changes to working directory

: ' ------------ GIT SHOW ------------ '
abbr gsw 'git show --word-diff --stat'
abbr gsc 'git show --color-words'                                # show git commit with color words
abbr gsd 'git show --word-diff'                                  # show git commit with word diff
abbr gss 'git show --stat'                                       # show git commit with statistics
abbr gs 'git show'                                               # show git commit

: ' ----------- GIT BRANCH ----------- '
abbr gb 'git branch'                                             # show git branches
abbr gbd 'git branch -D'                                         # delete git branch
abbr gba 'git branch -a'                                         # show all git branches
abbr gbm 'git branch -m'                                         # rename git branch

: ' ----------- GIT REBASE ----------- '
abbr gr 'git rebase'                                             # git rebase
abbr gri 'git rebase -i'                                         # git rebase interactive
abbr grb 'git rebase origin/$(git rev-parse --abbrev-ref HEAD)'  # git rebase origin current branch

: ' ------------ GIT GC ------------- '
abbr gfs 'git fsck'                                               # git check orphaned objects
abbr ggc 'git gc'                                                 # git garbage collect

: ' ---------- GIT PATCH ------------ '
abbr gpf 'git format-patch'                                       # git format patch e.g (git format-patch HEAD~1..HEAD)
abbr gap 'git am'                                                 # git apply patch e.g (git am < patch.patch)

: '----------- RESET ----------------- '
abbr guh 'git reset HEAD .'                                       # Use after 'git add'. This will back to working directory
abbr guu 'git checkout -- .'                                      # This will discard all changes in working directory
abbr guc 'git clean -f -d'                                        # This will remove all untracked files and directories

: ' ---------- NEOVIM ---------------- '
abbr v 'nvim'                                                     # open neovim

: ' ---------- LINUX ----------------- '
abbr mk 'mkdir -p'

: '------------ CODE ------------------ '
abbr . 'code .'

abbr swp 'free -m -h'
abbr cc 'xsel --clipboard --input'
abbr pp 'xsel --clipboard --output'

: '------------ NixOS ---------------- '
abbr nx-nre 'sudo nixos-rebuild switch --flake .#rwietter &| nom' # Rebuilds and activates the NixOS configuration using a specific flake.
abbr nx-hms 'home-manager -b backup switch --flake .#rwietter &| nom && awesome-client "awesome.restart()"' # Updates and activates the Home Manager configuration with backup and a specific flake.
abbr nx-hlp 'command-not-found' # Displays suggestions for unrecognised commands.
abbr nx-sgc 'nix-store --gc --print-roots | egrep -v "^(/nix/var|/run/\w+-system|\{memory)"' # Performs garbage collection on the Nix store, excluding certain paths.
abbr nx-build "nix-build --no-out-link &| nom" # Runs a Nix build without creating output links.
abbr nx-gc "sudo nix-collect-garbage --delete-older-than 5d"
abbr nx-hup "sudo nix-channel --update && nix flake update nixpkgs && home-manager -b backup switch --flake .#rwietter &| nom" # Updates the Nix channels and Home Manager configuration with backup.
abbr nx-up "sudo nix-channel --update && nix flake update nixpkgs && sudo nixos-rebuild switch --flake .#rwietter --upgrade" # Updates the Nix channels and NixOS configuration with a specific flake. <https://discourse.nixos.org/t/how-to-get-latest-nixpkgs-unstable-properties/21547/2>

: '------------- FZF ----------------- '
abbr zat 'fd --exclude 'repo' --type f | grep 'default' | fzf --multi --preview "bat --color=always --style=numbers --line-range=:1000 {}" -- --preview-window=right:70%:wrap'
