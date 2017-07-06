# Contribution

This file is currently not complete but will be improve step by step.

# Management of the FileLibrary

For now, the resources of the project are managed via a FileLibrary. Since it is hard to write Javascript or CSS in Pharo there is a system to export the files and re-import them easily.

To export the files you can execute: `MDLLibrary deployFiles`. This will deploy all the files of the FileLibrary.
To import the files you can execute: `MDLLibrary importFiles`. Also, if you need to import the files a lot you can execute: `MDLLibrary openImportButton`.

## Management of the CSS

The CSS of this project is managed via [SASS](http://sass-lang.com/). We do not right CSS, we generate it from the SASS files.

To help with it, some scripts exists on the *scripts* folder. On script allow to compile the SASS into CSS and the second launch a watcher that will compile the SASS into CSS each time a file change.
 
