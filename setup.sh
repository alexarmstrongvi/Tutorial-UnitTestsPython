# Add python source directory to PYTHONPATH
if [ "$BASH_SOURCE" == "$(basename "$BASH_SOURCE")" ]; then
    # sourcing file from parent directory
    full_path="$(pwd -P)/$BASH_SOURCE"
else
    # sourcing file from outside parent directory
    full_path="$(cd "$(dirname "$BASH_SOURCE")" && pwd -P)/$(basename "$BASH_SOURCE")"
fi

parent_dir="$(dirname "$full_path")"
dir_to_add="$parent_dir"

export PYTHONPATH="$PYTHONPATH:${dir_to_add}"
echo "$dir_to_add added to PYTHONPATH. Now you can run \"from UnitTestsPython import ...\""
