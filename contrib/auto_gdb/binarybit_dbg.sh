#!/usr/bin/env bash
# Copyright (c) 2018-2020 The Dash Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.
# use testnet settings,  if you need mainnet,  use ~/.binarybit/binarybitd.pid file instead
export LC_ALL=C

binarybit_pid=$(<~/.binarybit/testnet3/binarybitd.pid)
sudo gdb -batch -ex "source debug.gdb" binarybitd ${binarybit_pid}
