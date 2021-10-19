pragma solidity 0.8.0;
// Import interface for ERC20 standard
import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

// ... rest of your contract ...

Contract test {
       // Retrieve LendingPool address
    LendingPoolAddressesProvider provider = LendingPoolAddressesProvider(address(0x24a42fD28C976A61Df5D00D0599C34c4f90748c8)); // mainnet address, for other addresses: https://docs.aave.com/developers/developing-on-aave/deployed-contract-instances
    LendingPool lendingPool = LendingPool(provider.getLendingPool());
    
    // Input variables
    address daiAddress = address(0x6B175474E89094C44Da98b954EedeAC495271d0F); // mainnet DAI
    uint256 amount = 1000 * 1e18;
    uint16 referral = 0;
    
    // Approve LendingPool contract to move your DAI
    IERC20(daiAddress).approve(provider.getLendingPoolCore(), amount);
    
    // Deposit 1000 DAI
    lendingPool.deposit(daiAddress, amount, referral); 
}
