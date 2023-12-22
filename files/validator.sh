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
--only-known-rpc \
--gossip-port 8001 \
--no-voting \
--private-rpc \
--rpc-bind-address 0.0.0.0 \
--enable-cpi-and-log-storage \
--account-index program-id \
--account-index spl-token-owner \
--account-index spl-token-mint \
--enable-rpc-transaction-history \
--wal-recovery-mode skip_any_corrupted_record \
--log /mnt/logs/solana-validator.log \
--accounts /mnt/solana-accounts \
--ledger /mnt/solana-ledger \
--snapshots /mnt/solana-snapshots \
--limit-ledger-size 400000000 \
--rpc-send-default-max-retries 3 \
--rpc-send-service-max-retries 3 \
--rpc-send-retry-ms 2000 \
--full-rpc-api \
--accounts-index-memory-limit-mb 350 \
--account-index-exclude-key kinXdEcpDQeHPEuQnqmUgtYykqKGVFq6CeVX5iAHJq6 \
--tpu-use-quic \
--known-validator GwHH8ciFhR8vejWCqmg8FWZUCNtubPY2esALvy5tBvji \
--known-validator 4JahMMrVRS1gimWoXpD5H6KwKc2MrsoTDFMaStMttL1E \
--known-validator 5FbKKGdEaFcxGxxaLKVvBes2JxiKbreh8w2ZpMcSQ2a5 \
--known-validator 7Hp1e6BrTBkbBN4wFiNmycPVPsjvyUUBL2tGhYEMT6gt \
--known-validator 7qf8xDhtzb4ctRUyJB6eaUXPn69wnx8A8pQVxYejaTLV \
