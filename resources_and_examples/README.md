# Resources and examples folder

The prupose of this folder is to store useful resources and examples associated with the project.

2 examples of how the indexer could be used are already provided:

- indexer_example.csv

    This shows how to use an indexer to access and store information about different types of data. Recommended to use this for when reading in data.
    
- indexer_example_2.csv

    This shows how to use an indexer to store different model iterations with different hyperparameters.
    
This folder also contains a shell script to use rsync to copy the template project directory to another directory and can also be used to update the directory if the template is updated. Note, if the file already exists then it won't replace the file and the original file will be kept.

This shell script is named template_generator_script.sh