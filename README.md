# 🆘 Emergency Shelter Token System – Smart Contract

A blockchain-based solution to ensure **fair, transparent, and corruption-free distribution of emergency aid** in disaster-hit areas.

---

## 🧾 What is this? 

The **Emergency Shelter Token System** is a Solidity smart contract designed to: 

- ✅ **Verify disaster victims**
- 🎫 **Issue Shelter Tokens** to verified individuals
- 🏪 **Enable token redemption** at trusted vendors/NGOs
- 📊 **Track all aid distribution and redemption** transparently on-chain

These tokens function like digital aid vouchers, ensuring help reaches the right people when they need it the most.

---

## ❓ Why this project?

Disaster aid is often delayed or corrupted due to manual processes, lack of verification, and poor transparency.

| 🚨 Problem              | 💥 Impact                            |
| ----------------------- | ------------------------------------ |
| ❌ Corruption           | Fake beneficiaries receive aid       |
| ❌ Lack of transparency | No proof of where donations go       |
| ❌ Manual delays        | Victims wait too long for basic help |
| ❌ No accountability    | Difficult to audit who received what |

### ✅ Our solution offers:

| 🔧 Feature                 | 🌟 Benefit                                          |
| -------------------------- | --------------------------------------------------- |
| On-chain verification      | Only verified victims can access aid                |
| Tokenized distribution     | Digital tracking of who receives how much           |
| Verified vendor system     | Tokens usable only with approved vendors            |
| Public transaction history | Transparent and auditable aid flow                  |
| NGO & Government support   | Multi-party collaboration without centralized trust |

---

## 📌 Key Functionalities

| Function                    | Purpose                                      |
| --------------------------- | -------------------------------------------- |
| `verifyVictim(address)`     | Admin verifies a user as a legitimate victim |
| `addVendor(address)`        | Admin approves a vendor for redemption       |
| `issueTokens(address, amt)` | Admin issues tokens to verified victims      |
| `redeemTokens(vendor, amt)` | Victim redeems tokens at an approved vendor  |

---

## 🔐 Roles

- **Admin**: Government or NGO official managing verification and issuance
- **Victim**: Verified disaster-affected user eligible for aid
- **Vendor**: Registered supplier who accepts tokens for essential goods/services

---

## 🔗 Contract Details

- **Token Name**: Shelter Token
- **Symbol**: `SHELTER`
- **Decimals**: `0` (non-fractional tokens)
- **Supply**: Dynamic, based on issuance
- **Language**: Solidity `^0.8.25`

---

## 🌍 Real-World Use Cases

🌀 Floods, cyclones, or earthquakes

🏚️ War/conflict zones with displaced citizens

🧊 Climate disaster zones (e.g., wildfires, droughts)

🏕️ Refugee camps needing structured resource allocation

---

## 📖 License

MIT License – Free for use, modification, and distribution with attribution.
