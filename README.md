# 🎨 SUI-NFT: Loyalty Card dApp  

This project is a **Sui-based NFT dApp** that lets you mint and transfer **Loyalty Card NFTs** 🪪 to customers.  
It was built as part of the **"Sui On-Chain" workshop** 🎓 in collaboration with **Codenex Club, SRM University** 💡.  

---

## 🚀 What’s inside?

This project combines **Move smart contracts** + **React frontend** for a full-stack Sui dApp:  

- ⚡ **Move** → NFT logic (`loyalty_card` module with `mint_loyalty`)  
- 🎨 **React + Vite** → modern frontend  
- 🔒 **TypeScript** → type-safe development  
- 🧩 **Radix UI** → prebuilt UI components  
- 🛠️ **ESLint** → clean code with linting  
- 🔗 **@mysten/dapp-kit** → wallet connection + on-chain data  

---

## 🛠️ Move Smart Contract

The Move package (`/move`) defines a module:  

- **`Loyalty`** → NFT structure with customer ID + image URL  
- **`AdminCap`** → capability object for admin control  
- **`mint_loyalty`** → mint function that issues a new NFT and transfers it to a user  
- **`init`** → initializer, runs once at package publish, creating and assigning the `AdminCap`  

---

## 📦 Setup & Installation

###  Install Sui CLI
Follow the [Sui installation guide](https://docs.sui.io/build/install).  
Then configure your environment for **Testnet**:  

```bash
sui client new-env --alias testnet --rpc https://fullnode.testnet.sui.io:443
sui client switch --env testnet
---

```Best Part 

Building **SUI-NFT: Loyalty Card dApp** was an amazing learning experience 💡.  
This project showed me how powerful **Move + Sui** can be for creating secure and scalable on-chain applications.  

I started this journey through the **"Sui On-Chain" workshop** 🎓 in collaboration with **Codenex Club, SRM University** 🏫, and it gave me the confidence to turn ideas into working blockchain projects 🚀.  

This is just the beginning — I’m excited to keep exploring, experimenting, and building more innovative dApps on **Sui** 🔗✨.  

