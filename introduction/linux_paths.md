# Linux Paths

Before we begin diving into the world of Linux, we need to discuss the
concept of a path. Most of you have already dealt with paths in the
windows world and just didn't know it. In general, a path is the route
through a file system to get to a particular file. In Linux there are
two kinds of paths: **absolute paths** and **relative paths**.

**Absolute paths ALWAYS begin with a / and relative paths do not.** It
is that simple. The reason being is that an **absolute path** works no
matter where you are in the file system. Thus, the directions must start
from the "**root**" or beginning directory of the file system. This
"**root**" directory is represented with a `/` . In Windows the root
directory is C:\\. (Please note that the direction of the "slashes" is
correct.) In Windows all of the core system files (files needed by the
operating system) are located in the C:\\WINDOWS directory. The Linux
equivalent of this is the `/usr/bin` directory. This is where the data
used by the Linux operating system are stored.

```{figure} ../images/linux_directory_structure.png
:alt: linux directory structure
:width: 750px
:align: center
:name: directorystructure

 An example of a directory tree structure of a fictional Linux
machine.
```

From the example in Figure {numref}`%s <directorystructure>`, here are
some absolute and relative paths:

> `/home/kevin/` (absolute path; directory)
>
> `/usr/lib/` (absolute path; directory)
>
> `john/bloop` (relative path from `/home`; filename with path)
>
> `../var/` (relative path from `/usr/lib`; directory)
