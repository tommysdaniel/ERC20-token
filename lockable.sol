contract Lockable is Ownable {
    
    // Token state
    // better to provide constant time to avoid locked all transactions tokens in case of owner wallet get hacked
    uint256 internal constant lockedUntil = 1515060242; // unix time
    
    // the address that can make transactions when the transaction is locked 
    address internal allowedSender;

    /**
     *@dev Allow access only when is unlocked. This function is good when you make crowdsale to avoid token expose in exchanges
     */
    modifier unlocked() {
        require((now > lockedUntil) || (allowedSender == msg.sender));

        _;
    }

    /**
    * @dev Allows the current owner to transfer control of the contract to a newOwner.
    * @param _sender The address to allow transfer(example: Crowdsale contract address)
    */
    function allowLockedTransfer(address _sender) {
        allowedSender = _sender;
    }

}