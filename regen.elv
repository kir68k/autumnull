#!/usr/bin/env elvish
var schemeFile = autumnull.toml
var oldDir = $E:PWD/autumnull
var newDir = $E:PWD
var dirs   = [colors lua]
var cmd    = (external colorgen-nvim)

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
