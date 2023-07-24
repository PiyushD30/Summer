// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract summerFunds {
    address public partyA;
    address public partyB;
    uint256 public depositAmount;
    bool public releaseFundsCondition;
    bool public fundsReleased;
    modifier onlyPartyB() {
        require(msg.sender == partyB, "Only the fund receiver (Party B) can call this function");
        _;
    }

    constructor() {
        partyA = msg.sender;
    }

    function deposit(uint _depositAmount, address _partyB) external payable {
        depositAmount = _depositAmount;
        depositAmount = msg.value;
        partyB = _partyB ;

    }

    function setReleaseFundsCondition(bool _condition) external onlyPartyB {
        require(!fundsReleased, "Funds have already been released");
        releaseFundsCondition = _condition;
    }

    function releaseFunds() external onlyPartyB {
        require(releaseFundsCondition, "Release condition not met");
        require(!fundsReleased, "Funds have already been released");

        fundsReleased = true;
        payable(partyB).transfer(depositAmount);
    }

    function getDepositAmount() external view returns (uint256) {
        return depositAmount;
    }
}
