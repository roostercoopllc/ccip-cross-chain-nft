// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * THIS IS AN EXAMPLE CONTRACT THAT USES HARDCODED VALUES FOR CLARITY.
 * THIS IS AN EXAMPLE CONTRACT THAT USES UN-AUDITED CODE.
 * DO NOT USE THIS CODE IN PRODUCTION.
 */
contract XkcdNFT is ERC721URIStorage, Ownable {
    string constant TOKEN_URI =
        "https://gateway.pinata.cloud/ipfs/QmP4Qu54t9d6F7xscG6ZDaeVNaLE1AAct26ryy7RT1XH8C";
    uint256 internal tokenId;

    constructor(
        address initialOwner
    ) ERC721("TestXkcdNFT", "TXKCDN") Ownable(initialOwner) {}

    function mint(address to) public onlyOwner {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, TOKEN_URI);
        unchecked {
            tokenId++;
        }
    }
}
