#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge curl --version"
  [[ "${output}" =~ "7.79" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge bats -v"
  [[ "${output}" =~ "1.5.0" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge kubectl version --short=true --client=true"
  [[ "${output}" =~ "1.23.1" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge helm version --short=true"
  [[ "${output}" =~ "3.7.2" ]]
}

@test "sonobuoy version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge sonobuoy version --short=true"
  [[ "${output}" =~ "0.55.1" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge argocd version --short=true"
  [[ "${output}" =~ "2.2.1" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge awspec --version"
  [[ "${output}" =~ "1.25.1" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-kube-ops-slim-edge inspec --version"
  [[ "${output}" =~ "4.52.9" ]]
}
