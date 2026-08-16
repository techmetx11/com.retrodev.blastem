#!/usr/bin/env bash

rm -f com.retrodev.blastem.flatpak
rm -rf _build ; mkdir _build
rm -rf _repo ; mkdir _repo

BRANCH=test

flatpak-builder --ccache --force-clean --default-branch=$BRANCH _build com.retrodev.blastem.yaml --repo=_repo
flatpak build-bundle _repo com.retrodev.blastem.flatpak com.retrodev.blastem $BRANCH

