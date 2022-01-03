The Nugget Standard for Funding is a simple way to unify providing liquidity to some AMM.
All it requires is one function:
`function fund(address _tokenA, address _tokenB, uint _amountA, uint _amountB) external payable`;

This function then takes care of forwarding supplied funds (either approved beforehand in the case of ERC20 tokens or, in the case of the network native currency, sent with the function call) to some AMM. If the network native currency is supplied, _tokenA and _amountA is ommited in favor of a wrapper contract address and msg.value.

If the AMM requires initialization beforehand a compliant contract can implement a function:
`function init([arbitrary parameters]) external;`
