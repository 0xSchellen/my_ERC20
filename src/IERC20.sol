// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

/// @notice ERC20 Token (+ EIP-2612 implementation).
/// @author 0xSchellen
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @author Modified from Maple Finance (https://github.com/maple-labs/erc20)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate)

interface IERC20 {
    // ERC20 Standard
    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address to, uint256 value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    // ERC20 Extension - ???
    function decreaseAllowance(address spender, uint256 subtractedvalue) external returns (bool success_);

    function increaseAllowance(address spender, uint256 addedvalue) external returns (bool success_);

    // ERC20 Extension - Metadata
    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    // ERC20 Extension - Permit - EIP-2612
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external;

    function nonces(address owner) external view returns (uint256);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function PERMIT_TYPEHASH() external view returns (bytes32);
}
