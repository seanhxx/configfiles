# Add tensorflow models to Python Path
export my_dir=~/tensorflow/models/research/
export my_dir2=~/opt/tensorflow/models/research/
if [[ -d $my_dir/slim || -d $my_dir2/slim ]]; then
    export PYTHONPATH=$PYTHONPATH:$my_dir:$my_dir/slim
fi

