# Note Well: This file is designed to be sourced by the run hook
# and won't do anything useful by itself. nsqd is only configured by
# command line arguments
NSQ_ARGS=""

{{~#if cfg.auth-http-address}}
{{~#each cfg.auth-http-address}}
NSQ_ARGS="$NSQ_ARGS -auth-http-address={{this}}"
{{~/each}}
{{~/if}}
{{~#if cfg.broadcast-address}}
NSQ_ARGS="$NSQ_ARGS -broadcast-address=\"{{cfg.broadcast-address}}\""
{{~/if}}
{{~#if cfg.data-path}}
NSQ_ARGS="$NSQ_ARGS -data-path=\"{{cfg.data-path}}\""
{{~/if}}
{{~#if cfg.deflate}}
NSQ_ARGS="$NSQ_ARGS -deflate={{cfg.deflate}}"
{{~/if}}
{{~#if cfg.e2e-processing-latency-percentile}}
NSQ_ARGS="$NSQ_ARGS -e2e-processing-latency-percentile={{cfg.e2e-processing-latency-percentile}}"
{{~/if}}
{{~#if cfg.e2e-processing-latency-window-time}}
NSQ_ARGS="$NSQ_ARGS -e2e-processing-latency-window-time={{cfg.e2e-processing-latency-window-time}}"
{{~/if}}
{{~#if cfg.http-address}}
NSQ_ARGS="$NSQ_ARGS -http-address=\"{{cfg.http-address}}\""
{{~/if}}
{{~#if cfg.https-address}}
NSQ_ARGS="$NSQ_ARGS -https-address=\"{{cfg.https-address}}\""
{{~/if}}
{{~#if cfg.lookupd-tcp-address}}
{{~#each cfg.lookupd-tcp-address}}
NSQ_ARGS="$NSQ_ARGS -lookupd-tcp-address={{this}}"
{{~/each}}
{{~/if}}
{{~#if cfg.max-body-size}}
NSQ_ARGS="$NSQ_ARGS -max-body-size={{cfg.max-body-size}}"
{{~/if}}
{{~#if cfg.max-bytes-per-file}}
NSQ_ARGS="$NSQ_ARGS -max-bytes-per-file={{cfg.max-bytes-per-file}}"
{{~/if}}
{{~#if cfg.max-deflate-level}}
NSQ_ARGS="$NSQ_ARGS -max-deflate-level={{cfg.max-deflate-level}}"
{{~/if}}
{{~#if cfg.max-heartbeat-interval}}
NSQ_ARGS="$NSQ_ARGS -max-heartbeat-interval={{cfg.max-heartbeat-interval}}"
{{~/if}}
{{~#if cfg.max-msg-size}}
NSQ_ARGS="$NSQ_ARGS -max-msg-size={{cfg.max-msg-size}}"
{{~/if}}
{{~#if cfg.max-msg-timeout}}
NSQ_ARGS="$NSQ_ARGS -max-msg-timeout={{cfg.max-msg-timeout}}"
{{~/if}}
{{~#if cfg.max-output-buffer-size}}
NSQ_ARGS="$NSQ_ARGS -max-output-buffer-size={{cfg.max-output-buffer-size}}"
{{~/if}}
{{~#if cfg.max-output-buffer-timeout}}
NSQ_ARGS="$NSQ_ARGS -max-output-buffer-timeout={{cfg.max-output-buffer-timeout}}"
{{~/if}}
{{~#if cfg.max-rdy-count}}
NSQ_ARGS="$NSQ_ARGS -max-rdy-count={{cfg.max-rdy-count}}"
{{~/if}}
{{~#if cfg.max-req-timeout}}
NSQ_ARGS="$NSQ_ARGS -max-req-timeout={{cfg.max-req-timeout}}"
{{~/if}}
{{~#if cfg.mem-queue-size}}
NSQ_ARGS="$NSQ_ARGS -mem-queue-size={{cfg.mem-queue-size}}"
{{~/if}}
{{~#if cfg.msg-timeout}}
NSQ_ARGS="$NSQ_ARGS -msg-timeout={{cfg.msg-timeout}}"
{{~/if}}
{{~#if cfg.snappy}}
NSQ_ARGS="$NSQ_ARGS -snappy={{cfg.snappy}}"
{{~/if}}
{{~#if cfg.statsd-address}}
NSQ_ARGS="$NSQ_ARGS -statsd-address={{cfg.statsd-address}}"
{{~/if}}
{{~#if cfg.statsd-interval}}
NSQ_ARGS="$NSQ_ARGS -statsd-interval={{cfg.statsd-interval}}"
{{~/if}}
{{~#if cfg.statsd-mem-stats}}
NSQ_ARGS="$NSQ_ARGS -statsd-mem-stats={{cfg.statsd-mem-stats}}"
{{~/if}}
{{~#if cfg.statsd-prefix}}
NSQ_ARGS="$NSQ_ARGS -statsd-prefix={{cfg.statsd-prefix}}"
{{~/if}}
{{~#if cfg.sync-every}}
NSQ_ARGS="$NSQ_ARGS -sync-every={{cfg.sync-every}}"
{{~/if}}
{{~#if cfg.sync-timeout}}
NSQ_ARGS="$NSQ_ARGS -sync-timeout={{cfg.sync-timeout}}"
{{~/if}}
{{~#if cfg.tcp-address}}
NSQ_ARGS="$NSQ_ARGS -tcp-address={{cfg.tcp-address}}"
{{~/if}}
{{~#if cfg.tls-cert}}
NSQ_ARGS="$NSQ_ARGS -tls-cert={{cfg.tls-cert}}"
{{~/if}}
{{~#if cfg.tls-client-auth-policy}}
NSQ_ARGS="$NSQ_ARGS -tls-client-auth-policy={{cfg.tls-client-auth-policy}}"
{{~/if}}
{{~#if cfg.tls-key}}
NSQ_ARGS="$NSQ_ARGS -tls-key={{cfg.tls-key}}"
{{~/if}}
{{~#if cfg.tls-required}}
NSQ_ARGS="$NSQ_ARGS -tls-required={{cfg.tls-required}}"
{{~/if}}
{{~#if cfg.tls-root-ca-file}}
NSQ_ARGS="$NSQ_ARGS -tls-root-ca-file={{cfg.tls-root-ca-file}}"
{{~/if}}
{{~#if cfg.verbose}}
NSQ_ARGS="$NSQ_ARGS -verbose={{cfg.verbose}}"
{{~/if}}
{{~#if cfg.worker-id}}
NSQ_ARGS="$NSQ_ARGS -worker-id={{cfg.worker-id}}"
{{~/if}}
