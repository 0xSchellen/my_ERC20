// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract DSInvariantTest {
    address[] private targets;

    function targetContracts() public view virtual returns (address[] memory) {
        require(targets.length > 0, "NO_TARGET_CONTRACTS");

        return targets;
    }

    function addTargetContract(address newTargetContract) internal virtual {
        targets.push(newTargetContract);
    }
}
