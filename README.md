# Gitops demo
## Build and push container to Quay
- podman build . --platform linux/amd64 -t \<quay-registry\>/python-app/testapp:hello-world
- podman push \<quay-registry\>/python-app/testapp:hello-world
- Supporting docs
  - [podman build](https://docs.podman.io/en/stable/markdown/podman-build.1.html)
  - [podman push](https://docs.podman.io/en/stable/markdown/podman-push.1.html)
  - [Containerfile](https://github.com/shane-snyder/gitops-demo/blob/main/Containerfile)
  - [Containerfile documentation](https://manpages.debian.org/experimental/golang-github-containers-common/Containerfile.5.en.html)

## Deploy app using oc new-app
- oc new-project hello-world
- oc new-app --name hello-world --image=\<quay-registry>/python-app/testapp:hello-world
- oc expose svc/hello-world
- Supporting docs
  - [oc new-app](https://docs.openshift.com/container-platform/4.14/cli_reference/openshift_cli/developer-cli-commands.html#oc-new-app)
  - [oc new-project](https://docs.openshift.com/container-platform/4.14/cli_reference/openshift_cli/developer-cli-commands.html#oc-new-project)

## Kubernetes components
- [Projects](https://docs.openshift.com/container-platform/4.14/applications/projects/working-with-projects.html)
- [Deployments](https://docs.openshift.com/container-platform/4.14/applications/deployments/what-deployments-are.html)
- [Pods](https://docs.openshift.com/container-platform/4.14/nodes/pods/nodes-pods-using.html)
- [Service](https://docs.openshift.com/container-platform/4.14/rest_api/network_apis/service-v1.html)
- [Route](https://docs.openshift.com/container-platform/4.14/networking/routes/route-configuration.html)

## OpenShift GitOps
- [ArgoCD Tutorial](https://redhat-scholars.github.io/argocd-tutorial/argocd-tutorial/index.html)
- [OpenShift GitOps Documentation](https://docs.openshift.com/gitops/1.12/understanding_openshift_gitops/about-redhat-openshift-gitops.html)
- [Getting Started with OpenShift GitOps](https://github.com/siamaksade/openshift-gitops-getting-started?tab=readme-ov-file)