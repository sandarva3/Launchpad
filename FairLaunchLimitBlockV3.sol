pragma solidity = 0.8.24;



import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {Meme} from "./Meme.sol";
import {IFairLaunch, FairLaunchLimitBlockStruct} from "./required.sol";
import {NoDelegateCall} from "./NoDelegateCall.sol";
import {IERC721} from "openzeppelin-contracts/contracts/token/ERC721/IERC721.sol";

interface IUniLocker {
    function lock(
        address Iptoken,
        uint256 amountOrId,
        uint256 unlockBlock,
    )
    external returns (uint256 id);
}

interface IUniswapV3Factory {
    function getPool(
        address tokenA,
        address tokenB,
        uint24 fee,
    )
    external returns (address pool);
     function createPool(
        address tokenA,
        address tokenB,
        uint24 fee
    ) external returns (address pool);

    interface IFactory {
    function owner() external view returns (address);
}

interface INonfungiblePositionManager {
    function WETH9() external pure returns (address);

    struct MintParams {
        address token0;
        address token1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
    }
}
}

