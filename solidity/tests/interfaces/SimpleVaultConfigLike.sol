// SPDX-License-Identifier: UNLICENSED
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.2. SEE SOURCE BELOW. !!
pragma solidity >=0.8.4 <0.9.0;

interface SimpleVaultConfigLike {
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  function acceptDebt(address worker) external view returns (bool);

  function approvedAddStrategies(address) external view returns (bool);

  function getFairLaunchAddr() external view returns (address);

  function getInterestRate(uint256, uint256) external view returns (uint256);

  function getKillBps() external view returns (uint256);

  function getKillTreasuryBps() external view returns (uint256);

  function getReservePoolBps() external view returns (uint256);

  function getTreasuryAddr() external view returns (address);

  function getWNativeRelayer() external view returns (address);

  function getWrappedNativeAddr() external view returns (address);

  function initialize(
    uint256 _minDebtSize,
    uint256 _interestRate,
    uint256 _reservePoolBps,
    uint256 _killBps,
    address _getWrappedNativeAddr,
    address _getWNativeRelayer,
    address _getFairLaunchAddr,
    uint256 _getKillTreasuryBps,
    address _treasury
  ) external;

  function interestRate() external view returns (uint256);

  function isWorker(address worker) external view returns (bool);

  function isWorkerReserveConsistent(address worker) external view returns (bool);

  function isWorkerStable(address worker) external view returns (bool);

  function killFactor(address worker, uint256) external view returns (uint256);

  function killFactor(
    address worker,
    uint256,
    address
  ) external view returns (uint256);

  function minDebtSize() external view returns (uint256);

  function owner() external view returns (address);

  function rawKillFactor(
    address worker,
    uint256,
    address
  ) external view returns (uint256);

  function rawKillFactor(address worker, uint256) external view returns (uint256);

  function renounceOwnership() external;

  function setApprovedAddStrategy(address[] memory addStrats, bool ok) external;

  function setParams(
    uint256 _minDebtSize,
    uint256 _interestRate,
    uint256 _reservePoolBps,
    uint256 _killBps,
    address _getWrappedNativeAddr,
    address _getWNativeRelayer,
    address _getFairLaunchAddr,
    uint256 _getKillTreasuryBps,
    address _treasury
  ) external;

  function setWhitelistedCallers(address[] memory callers, bool ok) external;

  function setWhitelistedLiquidators(address[] memory callers, bool ok) external;

  function setWorker(
    address worker,
    bool _isWorker,
    bool _acceptDebt,
    uint256 _workFactor,
    uint256 _killFactor,
    bool _isStable,
    bool _isReserveConsistent
  ) external;

  function transferOwnership(address newOwner) external;

  function treasury() external view returns (address);

  function whitelistedCallers(address) external view returns (bool);

  function whitelistedLiquidators(address) external view returns (bool);

  function workFactor(
    address worker,
    uint256,
    address
  ) external view returns (uint256);

  function workFactor(address worker, uint256) external view returns (uint256);

  function workers(address)
    external
    view
    returns (
      bool isWorker,
      bool acceptDebt,
      uint256 workFactor,
      uint256 killFactor,
      bool isStable,
      bool isReserveConsistent
    );
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"previousOwner","type":"address"},{"indexed":true,"internalType":"address","name":"newOwner","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"inputs":[{"internalType":"address","name":"worker","type":"address"}],"name":"acceptDebt","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"approvedAddStrategies","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getFairLaunchAddr","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"name":"getInterestRate","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getKillBps","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getKillTreasuryBps","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getReservePoolBps","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getTreasuryAddr","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getWNativeRelayer","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getWrappedNativeAddr","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"_minDebtSize","type":"uint256"},{"internalType":"uint256","name":"_interestRate","type":"uint256"},{"internalType":"uint256","name":"_reservePoolBps","type":"uint256"},{"internalType":"uint256","name":"_killBps","type":"uint256"},{"internalType":"address","name":"_getWrappedNativeAddr","type":"address"},{"internalType":"address","name":"_getWNativeRelayer","type":"address"},{"internalType":"address","name":"_getFairLaunchAddr","type":"address"},{"internalType":"uint256","name":"_getKillTreasuryBps","type":"uint256"},{"internalType":"address","name":"_treasury","type":"address"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"interestRate","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"}],"name":"isWorker","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"}],"name":"isWorkerReserveConsistent","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"}],"name":"isWorkerStable","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"},{"internalType":"uint256","name":"","type":"uint256"}],"name":"killFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"address","name":"","type":"address"}],"name":"killFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"minDebtSize","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"owner","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"address","name":"","type":"address"}],"name":"rawKillFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"},{"internalType":"uint256","name":"","type":"uint256"}],"name":"rawKillFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"renounceOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address[]","name":"addStrats","type":"address[]"},{"internalType":"bool","name":"ok","type":"bool"}],"name":"setApprovedAddStrategy","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"_minDebtSize","type":"uint256"},{"internalType":"uint256","name":"_interestRate","type":"uint256"},{"internalType":"uint256","name":"_reservePoolBps","type":"uint256"},{"internalType":"uint256","name":"_killBps","type":"uint256"},{"internalType":"address","name":"_getWrappedNativeAddr","type":"address"},{"internalType":"address","name":"_getWNativeRelayer","type":"address"},{"internalType":"address","name":"_getFairLaunchAddr","type":"address"},{"internalType":"uint256","name":"_getKillTreasuryBps","type":"uint256"},{"internalType":"address","name":"_treasury","type":"address"}],"name":"setParams","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address[]","name":"callers","type":"address[]"},{"internalType":"bool","name":"ok","type":"bool"}],"name":"setWhitelistedCallers","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address[]","name":"callers","type":"address[]"},{"internalType":"bool","name":"ok","type":"bool"}],"name":"setWhitelistedLiquidators","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"},{"internalType":"bool","name":"_isWorker","type":"bool"},{"internalType":"bool","name":"_acceptDebt","type":"bool"},{"internalType":"uint256","name":"_workFactor","type":"uint256"},{"internalType":"uint256","name":"_killFactor","type":"uint256"},{"internalType":"bool","name":"_isStable","type":"bool"},{"internalType":"bool","name":"_isReserveConsistent","type":"bool"}],"name":"setWorker","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"treasury","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"whitelistedCallers","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"whitelistedLiquidators","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"address","name":"","type":"address"}],"name":"workFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"worker","type":"address"},{"internalType":"uint256","name":"","type":"uint256"}],"name":"workFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"workers","outputs":[{"internalType":"bool","name":"isWorker","type":"bool"},{"internalType":"bool","name":"acceptDebt","type":"bool"},{"internalType":"uint256","name":"workFactor","type":"uint256"},{"internalType":"uint256","name":"killFactor","type":"uint256"},{"internalType":"bool","name":"isStable","type":"bool"},{"internalType":"bool","name":"isReserveConsistent","type":"bool"}],"stateMutability":"view","type":"function"}]
*/