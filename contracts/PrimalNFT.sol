// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract PrimalNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenId;

    string public baseURI;

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    function mintNew(address _to, string memory _uri) public onlyOwner {
        uint256 tokenId = _tokenId.current();
        _tokenId.increment();
        _mint(_to, tokenId);
        _setTokenURI(tokenId, _uri);
    }

    constructor() ERC721("PrimalNFT", "PMT") {
        baseURI = "https://ipfs.io/ipfs/";
        mintNew(msg.sender, "QmNe3KfJogPEEyb7aAjBVb2zoseFWCqoxxEKc4yLGPKZZU");
        mintNew(msg.sender, "QmVxnuxsQXjF6fFpRqvCwDWYksUsCKrPw5Y4wNSHEkPDCv");
    }
}
