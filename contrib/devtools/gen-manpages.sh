#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BITCOIND=${BITCOIND:-$BINDIR/bitcoinlimitededitiond}
BITCOINCLI=${BITCOINCLI:-$BINDIR/bitcoinlimitededition-cli}
BITCOINTX=${BITCOINTX:-$BINDIR/bitcoinlimitededition-tx}
BITCOINQT=${BITCOINQT:-$BINDIR/qt/bitcoinlimitededition-qt}

[ ! -x $BITCOIND ] && echo "$BITCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BLEVER=($($BITCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoinlimitededitiond if --version-string is not set,
# but has different outcomes for bitcoinlimitededition-qt and bitcoinlimitededition-cli.
echo "[COPYRIGHT]" > footer.h2m
$BITCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $BITCOIND $BITCOINCLI $BITCOINTX $BITCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BLEVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BLEVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
