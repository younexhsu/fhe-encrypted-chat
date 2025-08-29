# FHE Encrypted Messaging

A decentralized chat dApp built on **Zama's FHEVM**.  
All messages are encrypted end-to-end while remaining queryable and verifiable.

## Features
- 🔒 End-to-end encrypted messages on-chain  
- 🔍 Private search and keyword filtering without revealing plaintext  
- 🛡️ True privacy: even validators cannot read messages  

## How it works
1. User submits ciphertext of a message.  
2. Smart contract stores ciphertext in state.  
3. Clients can request encrypted filters/search and only decrypt locally.  

## Contracts
- `contracts/Messages.sol` — demo contract to store encrypted messages.  

## Roadmap
- Frontend demo for sending and reading encrypted chats  
- Add encrypted group messaging and reactions  
- Optimize storage costs for ciphertext data  
