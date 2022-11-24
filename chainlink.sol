// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: AVAX
     * Aggregator: BTC/USD
     * Address: 0xa284e0aCB9a5F46CE7884D9929Fa573Ff842d7b3
     */
    constructor() {
        priceFeed = AggregatorV3Interface(
            0xa284e0aCB9a5F46CE7884D9929Fa573Ff842d7b3
        );
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            ,
            /*uint80 roundID*/ int price /*uint startedAt*/ /*uint timeStamp*/ /*uint80 answeredInRound*/,
            ,
            ,

        ) = priceFeed.latestRoundData();
        return price;
    }
}
