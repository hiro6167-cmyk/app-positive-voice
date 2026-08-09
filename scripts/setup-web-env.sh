#!/bin/bash
# PositiveVoice — Claude Code on the web / Linux 環境セットアップ
# iOS(Xcode)ビルドはこの環境では不可。バックエンド(Python Lambda)開発ツールを用意する。
# SessionStart フックから呼ばれることを想定。冪等・非対話。

set -e

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ -f "${REPO_ROOT}/backend/requirements-dev.txt" ]; then
    python3 -m pip install --quiet --disable-pip-version-check \
        -r "${REPO_ROOT}/backend/requirements-dev.txt" 2>/dev/null || true
fi
