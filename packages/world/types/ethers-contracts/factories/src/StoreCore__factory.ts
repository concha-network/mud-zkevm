/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { Signer, utils, Contract, ContractFactory, Overrides } from "ethers";
import type { Provider, TransactionRequest } from "@ethersproject/providers";
import type { PromiseOrValue } from "../../common";
import type { StoreCore, StoreCoreInterface } from "../../src/StoreCore";

const _abi = [
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: "bytes32",
        name: "tableId",
        type: "bytes32",
      },
      {
        indexed: false,
        internalType: "bytes32[]",
        name: "key",
        type: "bytes32[]",
      },
    ],
    name: "StoreDeleteRecord",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: "bytes32",
        name: "table",
        type: "bytes32",
      },
      {
        indexed: false,
        internalType: "bytes32[]",
        name: "key",
        type: "bytes32[]",
      },
      {
        indexed: false,
        internalType: "bytes",
        name: "data",
        type: "bytes",
      },
    ],
    name: "StoreEphemeralRecord",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: "bytes32",
        name: "tableId",
        type: "bytes32",
      },
      {
        indexed: false,
        internalType: "bytes32[]",
        name: "key",
        type: "bytes32[]",
      },
      {
        indexed: false,
        internalType: "uint8",
        name: "schemaIndex",
        type: "uint8",
      },
      {
        indexed: false,
        internalType: "bytes",
        name: "data",
        type: "bytes",
      },
    ],
    name: "StoreSetField",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: "bytes32",
        name: "tableId",
        type: "bytes32",
      },
      {
        indexed: false,
        internalType: "bytes32[]",
        name: "key",
        type: "bytes32[]",
      },
      {
        indexed: false,
        internalType: "bytes",
        name: "data",
        type: "bytes",
      },
    ],
    name: "StoreSetRecord",
    type: "event",
  },
] as const;

const _bytecode =
  "0x602d6037600b82828239805160001a607314602a57634e487b7160e01b600052600060045260246000fd5b30600052607381538281f3fe73000000000000000000000000000000000000000030146080604052600080fdfea164736f6c634300080d000a";

type StoreCoreConstructorParams =
  | [signer?: Signer]
  | ConstructorParameters<typeof ContractFactory>;

const isSuperArgs = (
  xs: StoreCoreConstructorParams
): xs is ConstructorParameters<typeof ContractFactory> => xs.length > 1;

export class StoreCore__factory extends ContractFactory {
  constructor(...args: StoreCoreConstructorParams) {
    if (isSuperArgs(args)) {
      super(...args);
    } else {
      super(_abi, _bytecode, args[0]);
    }
  }

  override deploy(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<StoreCore> {
    return super.deploy(overrides || {}) as Promise<StoreCore>;
  }
  override getDeployTransaction(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): TransactionRequest {
    return super.getDeployTransaction(overrides || {});
  }
  override attach(address: string): StoreCore {
    return super.attach(address) as StoreCore;
  }
  override connect(signer: Signer): StoreCore__factory {
    return super.connect(signer) as StoreCore__factory;
  }

  static readonly bytecode = _bytecode;
  static readonly abi = _abi;
  static createInterface(): StoreCoreInterface {
    return new utils.Interface(_abi) as StoreCoreInterface;
  }
  static connect(
    address: string,
    signerOrProvider: Signer | Provider
  ): StoreCore {
    return new Contract(address, _abi, signerOrProvider) as StoreCore;
  }
}