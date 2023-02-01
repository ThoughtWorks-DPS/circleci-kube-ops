#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge bats -v"
  [[ "${output}" =~ "1.8.2" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl version --short=true --client=true"
  [[ "${output}" =~ "1.26" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge helm version --short=true"
  [[ "${output}" =~ "3.11" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.56.12" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge argocd version --short=true"
  [[ "${output}" =~ "2.5" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge awspec --version"
  [[ "${output}" =~ "1.28" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge inspec --version"
  [[ "${output}" =~ "5.18" ]]
}

@test "datadog cli version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge dog --version"
  [[ "${output}" =~ "0.44.0" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kind version"
  [[ "${output}" =~ "0.17.0" ]]
}