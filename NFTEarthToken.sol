// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {OFT} from "@layerzerolabs/solidity-examples/contracts/token/oft/OFT.sol";

contract NFTEarthToken is OFT {
    constructor(address _layerZeroEndpoint, address mintToAddress) OFT("NFTEarth Token", "NFTE", _layerZeroEndpoint) {
        if (mintToAddress != address(0)) _mint(mintToAddress, 100_000_000 * 1e18);
    }
}