Bitcoinlimitededition Core
=============

Setup
---------------------
Bitcoinlimitededition Core is the original Bitcoinlimitededition client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Bitcoinlimitededition transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Bitcoinlimitededition Core, visit [bitcoinlimitededitioncore.org](https://bitcoinlimitededitioncore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run Bitcoinlimitededition on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/bitcoinlimitededition-qt` (GUI) or
- `bin/bitcoinlimitededitiond` (headless)

### Windows

Unpack the files into a directory, and then run bitcoinlimitededition-qt.exe.

### OS X

Drag Bitcoinlimitededition-Core to your applications folder, and then run Bitcoinlimitededition-Core.

### Need Help?

* See the documentation at the [Bitcoinlimitededition Wiki](https://en.bitcoinlimitededition.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#bitcoinlimitededition](http://webchat.freenode.net?channels=bitcoinlimitededition) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=bitcoinlimitededition).
* Ask for help on the [BitcoinlimitededitionTalk](https://bitcoinlimitededitiontalk.org/) forums, in the [Technical Support board](https://bitcoinlimitededitiontalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Bitcoinlimitededition on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Bitcoinlimitededition repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/bitcoinlimitededition/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [BitcoinlimitededitionTalk](https://bitcoinlimitededitiontalk.org/) forums, in the [Development & Technical Discussion board](https://bitcoinlimitededitiontalk.org/index.php?board=6.0).
* Discuss project-specific development on #bitcoinlimitededition-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=bitcoinlimitededition-core-dev).
* Discuss general Bitcoinlimitededition development on #bitcoinlimitededition-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=bitcoinlimitededition-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
