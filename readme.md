

## Project Title
**CaseStudyRewards**

## Project Description
**CaseStudyRewards** is a decentralized application (DApp) built on the Ethereum blockchain (or any EVM-compatible blockchain) that rewards users with tokens for completing case studies. The smart contract issues a custom ERC-20 token, `CaseStudyToken (CST)`, which is awarded to users upon successfully completing a case study.

The system ensures users can only complete each case study once and provides transparency in the reward process through event logs.

## Contract Address
0xE9a6a52792428f3C7a9AA88eBF9758f80f332137

![image](https://github.com/user-attachments/assets/bf7dbe4b-3614-4c73-89e3-aa5ae74b4a19)


(Note: Replace this placeholder with the actual address of your contract after it has been deployed to a blockchain.)

## Project Vision
The vision of **CaseStudyRewards** is to create an incentive-driven, blockchain-based system where users can earn rewards for completing educational or research-oriented tasks. This could be used for learning, research, training, or other fields where tasks are rewarded with tokens.

The goal is to provide a transparent, secure, and fair method of rewarding participants for their efforts, all while utilizing blockchain technology to ensure the integrity and tracking of completions.

## Key Features

- **Token Rewards System:**
  - Users earn **10 tokens (CST)** for each completed case study.
  - The custom token, `CaseStudyToken (CST)`, follows the ERC-20 standard with 18 decimals.

- **Preventing Duplicate Claims:**
  - The contract ensures that each case study can only be completed once per user. If a user tries to complete the same case study again, the contract will reject it.

- **Transparency Through Events:**
  - The contract emits two key events:
    - `TokensAwarded(address indexed user, uint256 amount)` when a user earns tokens.
    - `CaseStudyCompleted(address indexed user, string caseStudyName)` when a user successfully completes a case study.
  - These events allow external applications (like a front-end or a DApp) to track the process transparently.

- **User Balance and Rewards Tracking:**
  - Each user’s balance of CST tokens is tracked using the `balanceOf` mapping.
  - The total tokens a user has earned from completed case studies are tracked via the `totalTokensEarned` mapping.
  
- **Simple User Interaction:**
  - Users can call the `completeCaseStudy(string memory _caseStudyName)` function to complete a case study and earn tokens.
  - Users can query their token balance with `getUserBalance(address _user)` and check the total tokens earned with `getTotalTokensEarned(address _user)`.

- **Initial Token Distribution:**
  - During contract deployment, the contract creator is assigned the entire initial supply of tokens.

---


Future Scope
Extended Reward System:

Introduce additional reward mechanisms, such as badges, leaderboards, or higher token rewards for completing advanced case studies or multiple case studies within a specific period.
Integration with Learning Platforms:

Work towards integrating the rewards system with educational platforms, enabling users to complete real-life courses or tutorials and earn CST tokens upon completion.
Referral Program:

Introduce a referral system where users can earn bonus tokens for referring new participants to complete case studies or educational challenges.
Community-driven Case Studies:

Allow users to submit and create their own case studies, enabling a community-driven educational platform where people can share knowledge and earn rewards.
Scalability and Multi-Case Study Support:

Expand the platform to support batch case studies where a user can complete multiple case studies at once and earn rewards accordingly.
User Engagement & Interaction:

Add more interactive features to enhance user engagement, such as quizzes, interactive case studies, or content that can be validated through smart contracts to ensure a comprehensive reward experience.
Cross-Platform Support:

Expand the ecosystem to support multiple blockchain networks for compatibility with different decentralized finance (DeFi) applications.


