module github.com/gardener/gardener-extension-provider-kubevirt

go 1.16

require (
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/ahmetb/gen-crd-api-reference-docs v0.2.0
	github.com/coreos/go-systemd/v22 v22.1.0
	github.com/gardener/etcd-druid v0.3.0
	github.com/gardener/gardener v1.19.1-0.20210401122359-e16e6ec0002e
	github.com/gardener/machine-controller-manager v0.36.0
	github.com/go-logr/logr v0.3.0
	github.com/gobuffalo/packr/v2 v2.8.1
	github.com/golang/mock v1.5.0
	github.com/k8snetworkplumbingwg/network-attachment-definition-client v0.0.0-20200626054723-37f83d1996bc
	github.com/mitchellh/copystructure v1.1.1 // indirect
	github.com/onsi/ginkgo v1.14.2
	github.com/onsi/gomega v1.10.5
	github.com/openshift/custom-resource-status v0.0.0-20200602122900-c002fd1547ca // indirect
	github.com/pkg/errors v0.9.1
	github.com/spf13/cobra v1.1.1
	github.com/spf13/pflag v1.0.5
	k8s.io/api v0.20.2
	k8s.io/apiextensions-apiserver v0.20.2
	k8s.io/apimachinery v0.20.2
	k8s.io/apiserver v0.20.2
	k8s.io/autoscaler v0.0.0-20190805135949-100e91ba756e
	k8s.io/client-go v12.0.0+incompatible
	k8s.io/code-generator v0.20.2
	k8s.io/component-base v0.20.2
	k8s.io/kubelet v0.20.2
	k8s.io/utils v0.0.0-20210111153108-fddb29f9d009
	kubevirt.io/client-go v0.33.0
	kubevirt.io/containerized-data-importer v1.10.6
	sigs.k8s.io/controller-runtime v0.8.3
)

replace (
	github.com/prometheus/client_golang => github.com/prometheus/client_golang v1.7.1 // keep this value in sync with sigs.k8s.io/controller-runtime
	k8s.io/api => k8s.io/api v0.20.2
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.20.2
	k8s.io/apimachinery => k8s.io/apimachinery v0.20.2
	k8s.io/apiserver => k8s.io/apiserver v0.20.2
	k8s.io/client-go => k8s.io/client-go v0.20.2
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.20.2
	k8s.io/code-generator => k8s.io/code-generator v0.20.2
	k8s.io/component-base => k8s.io/component-base v0.20.2
	k8s.io/helm => k8s.io/helm v2.13.1+incompatible
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.20.2
)
