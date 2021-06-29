#!/usr/bin/env bash
set -ex

ver=(NATS_SERVER 2.3.1)

(
	cd "${ver[1]}/alpine3.14"
	docker build --tag nats:2.3.1-alpine3.14 .
)

(
	cd "${ver[1]}/scratch"
	docker build --tag nats:2.3.1-scratch .
)
