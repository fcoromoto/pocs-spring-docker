#!/usr/bin/env bash
curl --silent --fail --request GET \
                http://localhost:${SERVER_PORT}/actuator/health \
                | jq --exit-status '.status == "UP"' || exit 1