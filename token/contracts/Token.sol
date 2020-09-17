pragma solidity ^0.6.0;

import "./SafeMath.sol";

contract Token {

    using SafeMath for uint256;

    uint256 public total = 0;

    event AddToTotalEvent(uint256 value, uint256 total);

    function addToTotal(uint256 _number) public {
        total.add(_number);
        emit AddToTotalEvent(_number, total);
    }
}
