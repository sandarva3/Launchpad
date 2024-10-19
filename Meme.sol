pragma solidity ^0.8.19;

import {IMeme} from "./IMeme.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract Meme is IMeme, ERC20 {
    string public override meta; // 'override' overrides this('meta') variable which is Defined in Base contract.

    constructor(
        string memory name,
        string memory symbol,
        string memory _meta
    )

    ERC20(name, symbol){ //This calls the constructor of the ERC20 contract.
        meta = _meta; // It's used to set the metadata of the token from _meta of ERC20.
    }

    function _update(address from, address to, uint256 value) internal virtual override{ //here it's overriding the method from ERC20 contract.
        super._update(from, to, value); //Here it runs the parent contract's(ERC20 contract's) _update().
    }

    }
}