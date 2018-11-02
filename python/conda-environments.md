# Using virtual environments with Anaconda python
I got this information from this useful [guide]

[guide]: https://medium.freecodecamp.org/why-you-need-python-environments-and-how-to-manage-them-with-conda-85f155f4353c

## Create a new environment
```
conda create --name mynewenv python=3.4
```

## Activating and leaving an environment
```
source activate mynewenv
```

```
deactivate
```

## Listing environments
```
conda env list
```

## Listing current environment details
```
conda info
```

## Install package into current environment
```
conda install packagename
```

## Updating packages
```
conda update just_this_package_if_specified
```

## Adding a package channel
```
conda config --append channels newchannel
```

## Install packages from requirements.txt or environment.yml file
Pip can install packages from `requirements.txt` file:
```
pip install -r requirements.txt
```

Alternatively, you can use conda to install packages, and where not available through the conda channels,
you can use pip. This requires a YAML file, `environment.yml`:
``` 
name: env_name
channels:
- defaults
dependencies:
- package
- anotherpackage
- pip:
  - package_not_found_in_conda_channels
```

## Combining conda and pip
It's possible to install packages into a conda environment using pip.
First you must install pip within the conda environment.

```
conda create --name mynewenv
conda activate mynewenv
conda install -n mynewenv pip
pip install -r requirements.txt
```
