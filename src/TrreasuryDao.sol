// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract treasuryDAO {

    event paymentMade (address _address, uint amount);
    function makePayment () public payable {
        require(msg.value >= 1 ether);
        emit paymentMade(msg.sender, msg.value);
    }
}