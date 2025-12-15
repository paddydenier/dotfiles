awk '
/<!-- packages:start -->/ {print; system("ls -d */ | sed '\''s:/$::'\'' | sed '\''s/^/- /'\''"); skip=1; next}
/<!-- packages:end -->/   {skip=0}
!skip
' README.md > README.tmp && mv README.tmp README.md
