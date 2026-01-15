#!/bin/bash
echo "Applying Tekton Resources..."
oc apply -f tekton/tasks/
oc apply -f tekton/pipelines/
echo "Done! You can now run the pipeline using: oc create -f tekton/runs/idan-pipelinerun.yaml"
