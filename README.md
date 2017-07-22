# ENS (Ethereum Name Service) Bid Contracts
Implementations for version control and escrow for the Ethereum Name Service.

## Contracts

Contract structure
```
ENSBid
└─ EnsEscrow
```

ENSBid.sol: Version control for ENSEscrow.sol.  
ENSEscrow.sol: Escrow for ENS trade.

# Getting started

Install Truffle

```
$ npm install -g truffle
```

Launch the RPC client, for example TestRPC:
```
$ testrpc
```

Deploy `ENSBid` and `ENSEscrow` to the private network, the deployment process is defined at [here](./migrations/2_deploy_contracts.js):

```
$ truffle migrate --reset
```

Check the truffle [documentation](http://truffleframework.com/docs/) for more information.

# Reviewers And Audits

Code for the EnsBid is being reviewed by:

- [Phyrex Tsai](https://github.com/PhyrexTsai), Author.
