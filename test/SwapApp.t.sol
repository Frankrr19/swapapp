// SPDX-License-Identifier: MIT
//For testing in Arbitrum fork: forge test -vvvv --fork-url https://arb1.arbitrum.io/rpc --match-test testHasBeenDeployCorrectly
pragma solidity ^0.8.35;

import "lib/forge-std/src/Test.sol";
import "../src/SwapApp.sol";

contract SwapAppTest is Test {
    SwapApp app;
    address uniswappV2Router02Address = 0x4752ba5DBc23f44D87826276BF6Fd6b1C372aD24;

    function setUp() public {
        app = new SwapApp(uniswappV2Router02Address);
    }

    function testHasBeenDeployCorrectly() public view {
        assert(app.V2Router02Address() == uniswappV2Router02Address);
    }
}
