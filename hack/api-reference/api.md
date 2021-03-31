<p>Packages:</p>
<ul>
<li>
<a href="#kubevirt.provider.extensions.gardener.cloud%2fv1alpha1">kubevirt.provider.extensions.gardener.cloud/v1alpha1</a>
</li>
</ul>
<h2 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1">kubevirt.provider.extensions.gardener.cloud/v1alpha1</h2>
<p>
<p>Package v1alpha1 contains the kubevirt provider API resources.</p>
</p>
Resource Types:
<ul><li>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.CloudProfileConfig">CloudProfileConfig</a>
</li><li>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.ControlPlaneConfig">ControlPlaneConfig</a>
</li><li>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.InfrastructureConfig">InfrastructureConfig</a>
</li><li>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.WorkerConfig">WorkerConfig</a>
</li><li>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.WorkerStatus">WorkerStatus</a>
</li></ul>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.CloudProfileConfig">CloudProfileConfig
</h3>
<p>
<p>CloudProfileConfig contains provider-specific configuration that is embedded into Gardener&rsquo;s <code>CloudProfile</code>
resource.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
kubevirt.provider.extensions.gardener.cloud/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>CloudProfileConfig</code></td>
</tr>
<tr>
<td>
<code>machineImages</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineImages">
[]MachineImages
</a>
</em>
</td>
<td>
<p>MachineImages is the list of machine images that are understood by the controller. It maps
logical names and versions to provider-specific identifiers.</p>
</td>
</tr>
<tr>
<td>
<code>machineTypes</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineType">
[]MachineType
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>MachineTypes extend machineType object to KubeVirt provider specific config</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.ControlPlaneConfig">ControlPlaneConfig
</h3>
<p>
<p>ControlPlaneConfig contains configuration settings for the control plane.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
kubevirt.provider.extensions.gardener.cloud/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>ControlPlaneConfig</code></td>
</tr>
<tr>
<td>
<code>cloudControllerManager</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.CloudControllerManagerConfig">
CloudControllerManagerConfig
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>CloudControllerManager contains configuration settings for the cloud-controller-manager.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.InfrastructureConfig">InfrastructureConfig
</h3>
<p>
<p>InfrastructureConfig is the infrastructure configuration resource.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
kubevirt.provider.extensions.gardener.cloud/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>InfrastructureConfig</code></td>
</tr>
<tr>
<td>
<code>networks</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworksConfig">
NetworksConfig
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Networks is the configuration of the infrastructure networks.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.WorkerConfig">WorkerConfig
</h3>
<p>
<p>WorkerConfig contains configuration for VMs</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
kubevirt.provider.extensions.gardener.cloud/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>WorkerConfig</code></td>
</tr>
<tr>
<td>
<code>devices</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.Devices">
Devices
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Devices allows to customize devices attached to KubeVirt VM</p>
</td>
</tr>
<tr>
<td>
<code>cpu</code></br>
<em>
kubevirt.io/client-go/api/v1.CPU
</em>
</td>
<td>
<em>(Optional)</em>
<p>CPU allows specifying the CPU topology of KubeVirt VM.</p>
</td>
</tr>
<tr>
<td>
<code>memory</code></br>
<em>
kubevirt.io/client-go/api/v1.Memory
</em>
</td>
<td>
<em>(Optional)</em>
<p>Memory allows specifying the VirtualMachineInstance memory features like huge pages and guest memory settings.
Each feature might require appropriate FeatureGate enabled.
For hugepages take a look at:
k8s - <a href="https://kubernetes.io/docs/tasks/manage-hugepages/scheduling-hugepages/">https://kubernetes.io/docs/tasks/manage-hugepages/scheduling-hugepages/</a>
okd - <a href="https://docs.okd.io/3.9/scaling_performance/managing_hugepages.html#huge-pages-prerequisites">https://docs.okd.io/3.9/scaling_performance/managing_hugepages.html#huge-pages-prerequisites</a></p>
</td>
</tr>
<tr>
<td>
<code>dnsPolicy</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.15/#dnspolicy-v1-core">
Kubernetes core/v1.DNSPolicy
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Set DNS policy for the VM (the same as for the pod)
Defaults to &ldquo;ClusterFirst&rdquo;.
Valid values are &lsquo;ClusterFirstWithHostNet&rsquo;, &lsquo;ClusterFirst&rsquo;, &lsquo;Default&rsquo; or &lsquo;None&rsquo;.
DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy.
To have DNS options set along with hostNetwork, you have to specify DNS policy
explicitly to &lsquo;ClusterFirstWithHostNet&rsquo;.</p>
</td>
</tr>
<tr>
<td>
<code>dnsConfig</code></br>
<em>
<a href="https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.15/#poddnsconfig-v1-core">
Kubernetes core/v1.PodDNSConfig
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Specifies the DNS parameters of a VM.
Parameters specified here will be merged to the generated DNS
configuration based on DNSPolicy.</p>
</td>
</tr>
<tr>
<td>
<code>disablePreAllocatedDataVolumes</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>DisablePreAllocatedDataVolumes disables using pre-allocated DataVolumes for VMs. Default is false.</p>
</td>
</tr>
<tr>
<td>
<code>overcommitGuestOverhead</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>OvercommitGuestOverhead informs the scheduler to not take the guest-management overhead into account. Instead
put the overhead only into the container&rsquo;s memory limit. This can lead to crashes if
all memory is in use on a node. Defaults to false.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.WorkerStatus">WorkerStatus
</h3>
<p>
<p>WorkerStatus contains information about created worker resources.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>apiVersion</code></br>
string</td>
<td>
<code>
kubevirt.provider.extensions.gardener.cloud/v1alpha1
</code>
</td>
</tr>
<tr>
<td>
<code>kind</code></br>
string
</td>
<td><code>WorkerStatus</code></td>
</tr>
<tr>
<td>
<code>machineImages</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineImage">
[]MachineImage
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>MachineImages is a list of machine images that have been used in this worker. Usually, the extension controller
gets the mapping from name/version to the provider-specific machine image data in its componentconfig. However, if
a version that is still in use gets removed from this componentconfig it cannot reconcile anymore existing <code>Worker</code>
resources that are still using this version. Hence, it stores the used versions in the provider status to ensure
reconciliation is possible.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.CloudControllerManagerConfig">CloudControllerManagerConfig
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.ControlPlaneConfig">ControlPlaneConfig</a>)
</p>
<p>
<p>CloudControllerManagerConfig contains configuration settings for the cloud-controller-manager.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>featureGates</code></br>
<em>
map[string]bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>FeatureGates contains information about enabled feature gates.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.Devices">Devices
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.WorkerConfig">WorkerConfig</a>)
</p>
<p>
<p>Devices allows to fine-tune devices attached to KubeVirt VM</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>disks</code></br>
<em>
[]kubevirt.io/client-go/api/v1.Disk
</em>
</td>
<td>
<em>(Optional)</em>
<p>Disks allows to customize disks attached to KubeVirt VM</p>
</td>
</tr>
<tr>
<td>
<code>rng</code></br>
<em>
kubevirt.io/client-go/api/v1.Rng
</em>
</td>
<td>
<em>(Optional)</em>
<p>Whether to have random number generator from host</p>
</td>
</tr>
<tr>
<td>
<code>blockMultiQueue</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Whether or not to enable virtio multi-queue for block devices</p>
</td>
</tr>
<tr>
<td>
<code>networkInterfaceMultiqueue</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>If specified, virtual network interfaces configured with a virtio bus will also enable the vhost multiqueue feature</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.InfrastructureStatus">InfrastructureStatus
</h3>
<p>
<p>InfrastructureStatus contains information about the status of the infrastructure resources.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>networks</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworkStatus">
[]NetworkStatus
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Networks is the status of the infrastructure networks.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineImage">MachineImage
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.WorkerStatus">WorkerStatus</a>)
</p>
<p>
<p>MachineImage is a mapping from logical names and versions to provider-specific machine image data.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>name</code></br>
<em>
string
</em>
</td>
<td>
<p>Name is the logical name of the machine image.</p>
</td>
</tr>
<tr>
<td>
<code>version</code></br>
<em>
string
</em>
</td>
<td>
<p>Version is the logical version of the machine image.</p>
</td>
</tr>
<tr>
<td>
<code>sourceUrl</code></br>
<em>
string
</em>
</td>
<td>
<p>SourceURL is the url of the machine image</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineImageVersion">MachineImageVersion
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineImages">MachineImages</a>)
</p>
<p>
<p>MachineImageVersion contains a version and a provider-specific identifier.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>version</code></br>
<em>
string
</em>
</td>
<td>
<p>Version is the version of the image.</p>
</td>
</tr>
<tr>
<td>
<code>sourceURL</code></br>
<em>
string
</em>
</td>
<td>
<p>SourceURL is the url of the image</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineImages">MachineImages
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.CloudProfileConfig">CloudProfileConfig</a>)
</p>
<p>
<p>MachineImages is a mapping from logical names and versions to provider-specific identifiers.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>name</code></br>
<em>
string
</em>
</td>
<td>
<p>Name is the logical name of the machine image.</p>
</td>
</tr>
<tr>
<td>
<code>versions</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineImageVersion">
[]MachineImageVersion
</a>
</em>
</td>
<td>
<p>Versions contains versions and a provider-specific identifier.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineType">MachineType
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.CloudProfileConfig">CloudProfileConfig</a>)
</p>
<p>
<p>MachineType extend machineType object to KubeVirt provider specific config</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>name</code></br>
<em>
string
</em>
</td>
<td>
<p>Name is a reference for a machine type object</p>
</td>
</tr>
<tr>
<td>
<code>limits</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.ResourcesLimits">
ResourcesLimits
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>Limits defines resources limits of KubeVirt VMs</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworkAttachmentDefinitionReference">NetworkAttachmentDefinitionReference
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworksConfig">NetworksConfig</a>)
</p>
<p>
<p>NetworkAttachmentDefinitionReference represents a NetworkAttachmentDefinition reference.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>name</code></br>
<em>
string
</em>
</td>
<td>
<p>Name is the name of the referenced NetworkAttachmentDefinition.</p>
</td>
</tr>
<tr>
<td>
<code>namespace</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>Namespace is the namespace of the referenced NetworkAttachmentDefinition.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworkStatus">NetworkStatus
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.InfrastructureStatus">InfrastructureStatus</a>)
</p>
<p>
<p>NetworkStatus contains information about the status of an infrastructure network.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>name</code></br>
<em>
string
</em>
</td>
<td>
<p>Name is the name (in the format <name> or <namespace>/<name>) of the network.</p>
</td>
</tr>
<tr>
<td>
<code>default</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Default is whether the network is the default or not.</p>
</td>
</tr>
<tr>
<td>
<code>sha</code></br>
<em>
string
</em>
</td>
<td>
<em>(Optional)</em>
<p>SHA is an SHA256 checksum of the network configuration.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworksConfig">NetworksConfig
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.InfrastructureConfig">InfrastructureConfig</a>)
</p>
<p>
<p>NetworksConfig contains information about the configuration of the infrastructure networks.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>sharedNetworks</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworkAttachmentDefinitionReference">
[]NetworkAttachmentDefinitionReference
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>SharedNetworks is a list of existing networks that can be shared between multiple clusters, e.g. storage networks.</p>
</td>
</tr>
<tr>
<td>
<code>tenantNetworks</code></br>
<em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.TenantNetwork">
[]TenantNetwork
</a>
</em>
</td>
<td>
<em>(Optional)</em>
<p>TenantNetworks is a list of &ldquo;tenant&rdquo; networks that are only used by this cluster.</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.ResourcesLimits">ResourcesLimits
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.MachineType">MachineType</a>)
</p>
<p>
<p>ResourceLimits define resources limits of KubeVirt VMs</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>cpu</code></br>
<em>
k8s.io/apimachinery/pkg/api/resource.Quantity
</em>
</td>
<td>
<em>(Optional)</em>
<p>CPU limits</p>
</td>
</tr>
<tr>
<td>
<code>memory</code></br>
<em>
k8s.io/apimachinery/pkg/api/resource.Quantity
</em>
</td>
<td>
<em>(Optional)</em>
<p>Memory limits</p>
</td>
</tr>
</tbody>
</table>
<h3 id="kubevirt.provider.extensions.gardener.cloud/v1alpha1.TenantNetwork">TenantNetwork
</h3>
<p>
(<em>Appears on:</em>
<a href="#kubevirt.provider.extensions.gardener.cloud/v1alpha1.NetworksConfig">NetworksConfig</a>)
</p>
<p>
<p>TenantNetwork represents a &ldquo;tenant&rdquo; network that is only used by a single cluster.</p>
</p>
<table>
<thead>
<tr>
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<code>name</code></br>
<em>
string
</em>
</td>
<td>
<p>Name is the name of the tenant network.</p>
</td>
</tr>
<tr>
<td>
<code>config</code></br>
<em>
string
</em>
</td>
<td>
<p>Config is the configuration of the tenant network.</p>
</td>
</tr>
<tr>
<td>
<code>default</code></br>
<em>
bool
</em>
</td>
<td>
<em>(Optional)</em>
<p>Default is whether the tenant network is the default or not.</p>
</td>
</tr>
</tbody>
</table>
<hr/>
<p><em>
Generated with <a href="https://github.com/ahmetb/gen-crd-api-reference-docs">gen-crd-api-reference-docs</a>
</em></p>
