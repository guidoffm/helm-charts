# Alertmanager SNS Forwarder Helm Chart

Sns-Forwarder is a helper program to send Prometheus alerts to AWS SNS.

## Prerequisites

- Kubernetes 1.7+
- Make shure to have the permission to publish to the SNS topic. This can be achieved in
  two ways:
  - The recommended way: [IAM roles for service accounts](https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html)
  - Assign the permission to the IAM role for the worker node group

## Installing the Chart

To install the chart with the release name `my-release`:

```console
# Install the helm chart
$ helm install --name my-release guidoffm/sns-forwarder
```

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
# Uninstall the helm chart
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the chart and their default values.

| Parameter | Description | Default |
| --------- | ----------- | ------- |
| `awsRegion` | The AWS region you are using. | `eu-central-1` |
| `snsTopic` | The ARN of the SNS topic to send messages to | `arn:aws:sns:eu-central-1:012345678912:my-topic` |
| `image.repository` | Image repository | `guidoffm/alertmanager-sns-forwarder` |
| `image.tag` | Image tag | `latest` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `replicaCount`  | Number of pod replicas  | `1` |
| `serviceAccount.annotations` | A list of annotations to add to the servce account | `[]`

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart. For example,

```console
# Install the helm chart
$ helm install --name my-release -f values.yaml guidoffm/sns-forwarder
```

> **Tip**: You can use the default [values.yaml](values.yaml)

## Contributing

This chart is maintained at [github.com/guidoffm/helm-charts/sns-forwarder](https://github.com/guidoffm/helm-charts/sns-forwarder).
