// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract EmergencyShelterToken {
    string public name = "Shelter Token";
    string public symbol = "SHELTER";
    uint8 public decimals = 0;
    uint256 public totalSupply;

    address public admin;

    mapping(address => bool) public isVictim;
    mapping(address => bool) public isVendor;
    mapping(address => uint256) public balanceOf;

    event TokensIssued(address indexed to, uint256 amount);
    event TokensRedeemed(address indexed from, address indexed vendor, uint256 amount);
    event VendorAdded(address indexed vendor);
    event VictimVerified(address indexed victim);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function verifyVictim(address victim) external onlyAdmin {
        isVictim[victim] = true;
        emit VictimVerified(victim);
    }

    function addVendor(address vendor) external onlyAdmin {
        isVendor[vendor] = true;
        emit VendorAdded(vendor);
    }

    function issueTokens(address to, uint256 amount) external onlyAdmin {
        require(isVictim[to], "Not a verified victim");
        balanceOf[to] += amount;
        totalSupply += amount;
        emit TokensIssued(to, amount);
    }

    function redeemTokens(address vendor, uint256 amount) external {
        require(isVendor[vendor], "Invalid vendor");
        require(balanceOf[msg.sender] >= amount, "Insufficient tokens");

        balanceOf[msg.sender] -= amount;
        balanceOf[vendor] += amount;

        emit TokensRedeemed(msg.sender, vendor, amount);
    }
}
