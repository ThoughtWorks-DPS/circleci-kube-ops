#!/usr/bin/env bats

@test "bats version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kubectl version --client=true"
  [[ "${output}" =~ "1.30" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge helm version --short=true"
  [[ "${output}" =~ "3.15" ]]
}

@test "argocd version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge argocd version --short=true"
  [[ "${output}" =~ "2.11" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge awspec --version"
  [[ "${output}" =~ "1.30" ]]
}

@test "kind version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge kind version"
  [[ "${output}" =~ "0.23.0" ]]
}

@test "flux version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge flux --version"
  [[ "${output}" =~ "2.3" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "px version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge px version"
  [[ "${output}" =~ "0.8" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}

@test "istioctl version" {
  run bash -c "docker exec circleci-kube-ops-alpine-edge istioctl version --remote=false"
  [[ "${output}" =~ "1.22" ]]
}
