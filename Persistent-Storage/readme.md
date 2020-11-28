# Storage

Octopus Deploy stores most of it's data inside of the database. However, there are three directories that are stored on the local server that Octopus Deploy is deployed on.

- artifacts/
- taskLogs/
- repository/

Because Octopus Deploy is living in a Kubernetes pod running in EKS, you want to ensure that the three directores that hold the data are persisted.

## EFS
The configuration uses EFS, which is scalable file storage optimized for EC2. Since EFS allows you to mount file systems across multiple regions and instances, it's the perfect fit for node groups in EKS as they're EC2 instances on the backend.