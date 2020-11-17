# Sphinx documentation
With a python package with docstrings in the right format,
you can run
```
sphinx-quickstart
```
which generates a few files and directories.

You need to edit `source/conf.py`, adding the package directory to the `sys.path`.
Then some extensions need adding, including autodoc and napoleon.
I used this list in a project I helped with:
```
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.coverage',
    'sphinx.ext.mathjax',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
    'sphinx.ext.napoleon'
]
```

Then the key step which might be documented but is hard to find is
```
sphinx-apidoc -o ./source ../your-package
```

This generates `your-package.rst` in `source` which enables you to create a page for the
functions in your package when you run
```
make html
```

This creates your documentation in `build/html`.

If you want the documentation elsewhere you can run
```
sphinx-build -b html ./source ./put-html-here
```
