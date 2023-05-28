#!/bin/bash
export SOLANA_METRICS_CONFIG="host=https://metrics.solana.com:8086,db=mainnet-beta,u=mainnet-beta_write,p=password"
exec /mnt/solana/target/release/solana-validator \
--identity /home/solana/rpc_node.json \
--entrypoint entrypoint.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint2.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint3.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint4.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint5.mainnet-beta.solana.com:8001 \
--rpc-port 8899 \
--dynamic-port-range 8002-8099 \
--no-port-check \
--gossip-port 8001 \
--no-untrusted-rpc \
--no-voting \
--private-rpc \
--rpc-bind-address 0.0.0.0 \
--enable-cpi-and-log-storage \
--account-index program-id \
#--account-index spl-token-owner \
#--account-index spl-token-mint \
--enable-rpc-transaction-history \
--no-duplicate-instance-check \
--wal-recovery-mode skip_any_corrupted_record \
--log /mnt/logs/solana-validator.log \
--accounts /mnt/solana-accounts \
--ledger /mnt/solana-ledger \
--snapshots /mnt/solana-snapshots \
--no-snapshot-fetch \
--limit-ledger-size 400000000 \
--rpc-send-default-max-retries 3 \
--rpc-send-service-max-retries 3 \
--rpc-send-retry-ms 2000 \
--full-rpc-api \
--accounts-index-memory-limit-mb 350 \
--account-index-exclude-key kinXdEcpDQeHPEuQnqmUgtYykqKGVFq6CeVX5iAHJq6 \
--account-index-exclude-key metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s \
--tpu-use-quic \
--known-validator DRpbCBMxVnDK7maPM5tGv6MvB3v1sRMC86PZ8okm21hy \
--known-validator EgxVyTgh2Msg781wt9EsqYx4fW8wSvfFAHGLaJQjghiL \
--known-validator c3rtoMCHSbFrLRTAdw4iRowKSn4BrDtvSPbuyJwkHwx \
--known-validator DiGifdKABxzru2KsjN3YkZZmWP9mVMYK8HWadjtPtJit
