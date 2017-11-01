# Add .local/bin to environment
export PATH=~/.local/bin:$PATH

# Add tensorflow models to Python Path
export my_dir=~/tensorflow/models/research/
if [ -d $my_dir/slim ]; then
    export PYTHONPATH=$PYTHONPATH:$my_dir:$my_dir/slim
fi
