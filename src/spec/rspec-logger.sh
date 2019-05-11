if [ -z $1 ]; then
    echo Filepath not found, please use the correct format: ./rspec-logger-2.sh yourfilepath
    exit
fi

rspec $1 2>/dev/null | tee -a ./rspec.log
