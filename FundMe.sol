//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    mapping(address => uint256) public addressAmountFunded;

    function fund() public payable {
        addressAmountFunded[msg.sender] += msg.value;
    }
}
