# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# deps
update:; forge update

# Build & test
build  :; forge build
test   :; forge test -vvv
test-gauntlet-strategies-update:; forge test -vvv --match-path src/test/AaveV3ConfigEngineGauntletProposal.t.sol --gas-report
test-config-engine:; forge test -vvv --match-path src/test/AaveV3ConfigEngineTest.t.sol --gas-report
test-rates-factory:; forge test -vvv --match-path src/test/V3RateStrategyFactory.t.sol --gas-report
test-v2-config-engine:; forge test -vvv --match-path src/test/AaveV2ConfigEngineTest.t.sol --gas-report
test-v2-rates-factory:; forge test -vvv --match-path src/test/V2RateStrategyFactory.t.sol --gas-report

# Scripts
deploy-engine-eth :;  forge script scripts/AaveV3ConfigEngine.s.sol:DeployEngineEth --rpc-url mainnet --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-engine-opt :;  forge script scripts/AaveV3ConfigEngine.s.sol:DeployEngineOpt --rpc-url optimism --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-engine-arb :;  forge script scripts/AaveV3ConfigEngine.s.sol:DeployEngineArb --rpc-url arbitrum --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-engine-pol :;  forge script scripts/AaveV3ConfigEngine.s.sol:DeployEnginePol --rpc-url polygon --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-engine-ava :; forge script scripts/AaveV3ConfigEngine.s.sol:DeployEngineAva --rpc-url avalanche --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-engine-met :; forge script scripts/AaveV3ConfigEngine.s.sol:DeployEngineMet --rpc-url metis --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-eth :; forge script scripts/V3RateStrategyFactory.s.sol:DeployRatesFactoryEth --rpc-url mainnet --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-pol :; forge script scripts/V3RateStrategyFactory.s.sol:DeployRatesFactoryPol --rpc-url polygon --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-opt :; forge script scripts/V3RateStrategyFactory.s.sol:DeployRatesFactoryOpt --rpc-url optimism --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-arb :; forge script scripts/V3RateStrategyFactory.s.sol:DeployRatesFactoryArb --rpc-url arbitrum --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-ava :; forge script scripts/V3RateStrategyFactory.s.sol:DeployRatesFactoryAva --rpc-url avalanche --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-met :; forge script scripts/V3RateStrategyFactory.s.sol:DeployRatesFactoryMet --rpc-url metis --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-forwarder-pol :;  forge script scripts/CrosschainForwarders.s.sol:DeployPol --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-forwarder-opt :;  forge script scripts/CrosschainForwarders.s.sol:DeployOpt --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-forwarder-arb :;  forge script scripts/CrosschainForwarders.s.sol:DeployArb --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-forwarder-met :;  forge script scripts/CrosschainForwarders.s.sol:DeployMet --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-steward-eth :; forge script scripts/RiskStewards.s.sol:DeployEth --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-steward-pol :; forge script scripts/RiskStewards.s.sol:DeployPol --rpc-url polygon --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-steward-opt :; forge script scripts/RiskStewards.s.sol:DeployOpt --rpc-url optimism --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-steward-arb :; forge script scripts/RiskStewards.s.sol:DeployArb --rpc-url arbitrum --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-steward-ava :; forge script scripts/RiskStewards.s.sol:DeployAva --rpc-url avalanche --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-steward-met :; forge script scripts/RiskStewards.s.sol:DeployMet --rpc-url metis --broadcast --ledger --legacy --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv

deploy-rates-factory-v2-eth :; forge script scripts/V2RateStrategyFactory.s.sol:DeployV2RatesFactoryEth --mnemonics random --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-v2-eth-amm :; forge script scripts/V2RateStrategyFactory.s.sol:DeployV2RatesFactoryEthAMM --mnemonics random --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-v2-pol :; forge script scripts/V2RateStrategyFactory.s.sol:DeployV2RatesFactoryPol --mnemonics random --rpc-url polygon --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-rates-factory-v2-ava :; forge script scripts/V2RateStrategyFactory.s.sol:DeployV2RatesFactoryAva --mnemonics random --rpc-url avalanche --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv

deploy-config-engine-v2-eth :; forge script scripts/AaveV2ConfigEngine.s.sol:DeployV2EngineEth --mnemonics random --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-config-engine-v2-eth-amm :; forge script scripts/AaveV2ConfigEngine.s.sol:DeployV2EngineEthAMM --mnemonics random --rpc-url mainnet --broadcast --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-config-engine-v2-pol :; forge script scripts/AaveV2ConfigEngine.s.sol:DeployV2EnginePol --mnemonics random --rpc-url polygon --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
deploy-config-engine-v2-ava :; forge script scripts/AaveV2ConfigEngine.s.sol:DeployV2EngineAva --mnemonics random --rpc-url avalanche --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv

# Utilities
download :; cast etherscan-source --chain ${chain} -d src/etherscan/${chain}_${address} ${address}
git-diff :
	@mkdir -p diffs
	@printf '%s\n%s\n%s\n' "\`\`\`diff" "$$(git diff --no-index --diff-algorithm=patience --ignore-space-at-eol ${before} ${after})" "\`\`\`" > diffs/${out}.md