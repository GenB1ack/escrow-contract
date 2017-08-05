# ENS (Ethereum Name Service) Bid Escrow Contracts
Implementations escrow contract for the Ethereum Name Service.

## Contracts

Contract structure
```
EnsBidEscrow
```

ENSBidEscrow.sol: Escrow for ENS trade.

# Getting started

Install Truffle

```
$ npm install -g truffle
```

Launch the RPC client, for example TestRPC:
```
$ testrpc
```

Deploy `ENSBidEscrow` to the private network, the deployment process is defined at [here](./migrations/2_deploy_contracts.js):

```
$ truffle migrate --reset
```

Check the truffle [documentation](http://truffleframework.com/docs/) for more information.

# Reviewers And Audits

Code for the EnsBid is being reviewed by:

- [Phyrex Tsai](https://github.com/PhyrexTsai), Author.
