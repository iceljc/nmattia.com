## Build

``` shell
$ nix-build
```

## Watch

``` shell
$ nix-shell -p 'haskellPackages.wai-app-static' --run 'warp -d result'
```

## Deploy

Run the deploy script:

``` shell
$ ./script/deploy
```

or run the following commands:

``` shell
$ git worktree add gh-pages gh-pages
$ rsync -rv --exclude .git --exclude CNAME result/ gh-pages/ --delete
$ git -C gh-pages/ add -A
$ git -C gh-pages/ commit -m "foo"
$ git -C gh-pages/ push
```
