#!/usr/bin/env elvish
var schemeFile = autumnull.toml
var oldDir = $E:PWD/autumnull
var newDir = $E:PWD
var dirs   = [colors lua]
var cmd    = (external colorgen-nvim)

# Why won't this work ;~;
# All this does is go through "colors" then "lua"
# If I change exec to echo, it works properly
# Changing back to exec, it only does the first dir "colors"...
###
#fn regen {
#  for strDirs $dirs {
#    exec cp -vr $oldDir"/"$strDirs $newDir"/"$strDirs
#  }
#  sleep 0.3
#  exec rm -rv $oldDir
#}

$cmd $schemeFile
cp -rvf $oldDir"/"colors/* $newDir"/"colors/
cp -rvf $oldDir"/"lua/* $newDir"/"lua/
rm -rvf $oldDir
