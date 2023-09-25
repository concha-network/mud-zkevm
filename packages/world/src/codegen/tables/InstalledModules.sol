// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout, FieldLayoutLib } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";
import { RESOURCE_TABLE, RESOURCE_OFFCHAIN_TABLE } from "@latticexyz/store/src/storeResourceTypes.sol";

ResourceId constant _tableId = ResourceId.wrap(
  bytes32(abi.encodePacked(RESOURCE_TABLE, bytes14("world"), bytes16("InstalledModules")))
);
ResourceId constant InstalledModulesTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x0014010014000000000000000000000000000000000000000000000000000000
);

library InstalledModules {
  /** Get the table values' field layout */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](2);
    _keySchema[0] = SchemaType.BYTES16;
    _keySchema[1] = SchemaType.BYTES32;

    return SchemaLib.encode(_keySchema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](1);
    _valueSchema[0] = SchemaType.ADDRESS;

    return SchemaLib.encode(_valueSchema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](2);
    keyNames[0] = "moduleName";
    keyNames[1] = "argumentsHash";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "moduleAddress";
  }

  /** Register the table with its config */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table with its config */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table with its config (using the specified store) */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Get moduleAddress */
  function getModuleAddress(bytes16 moduleName, bytes32 argumentsHash) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Get moduleAddress */
  function _getModuleAddress(bytes16 moduleName, bytes32 argumentsHash) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Get moduleAddress (using the specified store) */
  function getModuleAddress(
    IStore _store,
    bytes16 moduleName,
    bytes32 argumentsHash
  ) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Get moduleAddress */
  function get(bytes16 moduleName, bytes32 argumentsHash) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Get moduleAddress */
  function _get(bytes16 moduleName, bytes32 argumentsHash) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Get moduleAddress (using the specified store) */
  function get(IStore _store, bytes16 moduleName, bytes32 argumentsHash) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Set moduleAddress */
  function setModuleAddress(bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), _fieldLayout);
  }

  /** Set moduleAddress */
  function _setModuleAddress(bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), _fieldLayout);
  }

  /** Set moduleAddress (using the specified store) */
  function setModuleAddress(IStore _store, bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    _store.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), _fieldLayout);
  }

  /** Set moduleAddress */
  function set(bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), _fieldLayout);
  }

  /** Set moduleAddress */
  function _set(bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), _fieldLayout);
  }

  /** Set moduleAddress (using the specified store) */
  function set(IStore _store, bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    _store.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), _fieldLayout);
  }

  /** Delete all data for given keys */
  function deleteRecord(bytes16 moduleName, bytes32 argumentsHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /** Delete all data for given keys */
  function _deleteRecord(bytes16 moduleName, bytes32 argumentsHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /** Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes16 moduleName, bytes32 argumentsHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    _store.deleteRecord(_tableId, _keyTuple);
  }

  /** Tightly pack static data using this table's schema */
  function encodeStatic(address moduleAddress) internal pure returns (bytes memory) {
    return abi.encodePacked(moduleAddress);
  }

  /** Tightly pack full data using this table's field layout */
  function encode(address moduleAddress) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData = encodeStatic(moduleAddress);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /** Encode keys as a bytes32 array using this table's field layout */
  function encodeKeyTuple(bytes16 moduleName, bytes32 argumentsHash) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    return _keyTuple;
  }
}
