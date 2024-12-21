// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CaseStudyRewards {

    // Token variables
    string public name = "CaseStudyToken";
    string public symbol = "CST";
    uint8 public decimals = 18;
    uint256 public totalSupply;
    uint256 public tokensPerCaseStudy = 10 * 10**18; // 10 tokens per case study (18 decimals)

    // Mappings to store user balances, completed case studies, and total tokens earned
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(string => bool)) public completedCaseStudies;
    mapping(address => uint256) public totalTokensEarned;

    // Events
    event TokensAwarded(address indexed user, uint256 amount);
    event CaseStudyCompleted(address indexed user, string caseStudyName);
    
    // Constructor to initialize the token supply and assign it to the contract creator
    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply * 10**decimals; // Set initial supply (18 decimals)
        balanceOf[msg.sender] = totalSupply; // Assign all tokens to the contract creator
    }

    // Function to allow users to complete a case study and earn tokens
    function completeCaseStudy(string memory _caseStudyName) public {
        // Ensure the user has not already completed this case study
        require(!completedCaseStudies[msg.sender][_caseStudyName], "Case study already completed.");
        
        // Mark the case study as completed
        completedCaseStudies[msg.sender][_caseStudyName] = true;
        
        // Award tokens for completion
        balanceOf[msg.sender] += tokensPerCaseStudy;
        totalTokensEarned[msg.sender] += tokensPerCaseStudy;
        
        // Emit events for token award and case study completion
        emit TokensAwarded(msg.sender, tokensPerCaseStudy);
        emit CaseStudyCompleted(msg.sender, _caseStudyName);
    }

    // Function to view the user's token balance
    function getUserBalance(address _user) public view returns (uint256) {
        return balanceOf[_user];
    }

    // Function to view the total tokens a user has earned
    function getTotalTokensEarned(address _user) public view returns (uint256) {
        return totalTokensEarned[_user];
    }

    // Function to check if a user has completed a particular case study
    function hasCompletedCaseStudy(address _user, string memory _caseStudyName) public view returns (bool) {
        return completedCaseStudies[_user][_caseStudyName];
    }
}
