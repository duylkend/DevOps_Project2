# CD12352 - Infrastructure as Code Project Solution
# DuyLK16

## Spin up instructions
Run this command to create the network
./run.sh deploy us-east-1 network-stack network.yml network-parameters.json

Then Run this command to create the Udagram (server)
./run.sh deploy us-east-1 udagram-stack udagram.yml udagram-parameters.json
## Tear down instructions
Run this command to delete the Udagram (server)
./run.sh delete us-east-1 udagram-stack

Run this command to delete the network
./run.sh delete us-east-1 network-stack

## Other considerations
TODO (optional)