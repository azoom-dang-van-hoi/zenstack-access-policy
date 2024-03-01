#!/usr/bin/env bash
echo Run script to copy access-policy to zenstack
LIB_DIR="@azoom/zenstack-access-policy"
ZENSTACK_DIR="zenstack/plugins"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && cd -- "../${LIB_DIR}" &> /dev/null && pwd )
POLICY_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && cd -- "../${ZENSTACK_DIR}" &> /dev/null && pwd )
/usr/bin/env rm -r "${POLICY_DIR}/access-policy" || true && cp -r "${SCRIPT_DIR}/." "${POLICY_DIR}/access-policy"
