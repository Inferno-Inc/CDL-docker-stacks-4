# functions for building various versions of image

build_default() {
    local image_dir="$GITHUB_WORKSPACE/cdl-neurosci"
    docker build --rm --force-rm \
        -f "$image_dir/Dockerfile" \
        -t "$DOCKER_HUB_ORG/cdl-neurosci:$IMAGE_PYTHON" \
        --build-arg PYTHON_VERSION="$IMAGE_PYTHON" \
        "$image_dir"
}

