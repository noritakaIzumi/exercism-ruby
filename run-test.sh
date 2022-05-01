#!/usr/bin/env bash

# test script.
#
# Error codes
# 1: exercise slug is missing
# 2: failed to get script path

exercise_slug="${1}"
if [ -z "${exercise_slug}" ]; then
  echo 'exercise slug is missing'
  exit 1
fi

project_dir="$(
  cd "$(dirname "${0}")" || exit 2
  pwd
)"
solution_dir="${project_dir}/${exercise_slug}"
output_dir="${project_dir}/output/${exercise_slug}"

MSYS_NO_PATHCONV=1 docker run --rm \
  --mount type=bind,src="${solution_dir}",dst=/solution \
  --mount type=bind,src="${output_dir}",dst=/output \
  exercism/ruby-test-runner:latest "${exercise_slug}" /solution /output

if which jq; then
  jq -r . "${output_dir}"/results.json
else
  cat "${output_dir}"/results.json
fi
