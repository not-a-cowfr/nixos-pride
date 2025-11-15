#!/usr/bin/env bash

pushd flags;
	for f in *.svg; do
		echo "converting $f"
		inkscape "$f" \
			--export-filename="${f%.svg}.png" \
			--export-width=1000 \
			--export-height=1000;
	done;
popd;
