// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * Demo-only contract to illustrate how encrypted chat messages
 * could be stored and retrieved on an FHE-enabled EVM.
 * In a real FHEVM environment, `bytes` values represent ciphertext.
 */
contract Messages {
    struct EncryptedMessage {
        address sender;
        bytes ciphertext;   // encrypted content of the message
        uint256 timestamp;
    }

    EncryptedMessage[] public messages;

    event MessageSent(address indexed sender, uint256 indexed id, bytes ciphertext);

    /// @notice Send a new encrypted message
    function sendMessage(bytes calldata _ciphertext) external {
        messages.push(EncryptedMessage({
            sender: msg.sender,
            ciphertext: _ciphertext,
            timestamp: block.timestamp
        }));

        emit MessageSent(msg.sender, messages.length - 1, _ciphertext);
    }

    /// @notice Get total count of messages
    function getMessageCount() external view returns (uint256) {
        return messages.length;
    }

    /// @notice Fetch a specific encrypted message by index
    function getMessage(uint256 id) external view returns (EncryptedMessage memory) {
        require(id < messages.length, "Invalid ID");
        return messages[id];
    }
}
