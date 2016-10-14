for dir in *; do (cd $dir && echo "sha,files,insertions,deletions" > git.log &&
git log --shortstat --no-merges --pretty="format:SHA1 %H stats" | awk 'BEGIN { RS = "" ; FS = "\n" } { if(NF > 1) print $(NF-1) $(NF) }' | sed -E 's/SHA1 (.*) stats (.*) files? changed(, (.*) insertions?\(\+\))?(, (.*) deletions?\(\-\))?/\1,\2,\4,\6/' >> git.log
)&; done; wait;
