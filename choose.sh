#!/bin/bash

pstart=PROGRESS_START; pend=PROGRESS_END
progress="$(sed -n "/$pstart/,/$pend/{/^$\|\.$/s/^[ a-z]*//gp}" README.md)"
width=$(($(grep -vc . <<<"$progress")*56))
table="$(column -c$width <<<"$progress" | tr -d $'\t')"
idx=$(grep -ob \\. <(tr -d $'\n' <<<"$table") | shuf -n1 | cut -d: -f1)
len=$(($(head -1 <<<"$table" | wc -c) - 1))
lang=$(sed -n "/$pstart/,+$((idx / len + 5))s/[^a-z]//gp" README.md | tail -1)
echo "implement #$(printf '%03d' $((idx % len))) in $lang"
