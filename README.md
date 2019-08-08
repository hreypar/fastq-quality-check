# fastq-quality-check #

Run [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) on any number of [FASTQ](https://en.wikipedia.org/wiki/FASTQ_format) files to obtain a quality report for each one.


### Prerequisites

- [FastQC](https://raw.githubusercontent.com/s-andrews/FastQC/master/INSTALL.txt)

- [MultiQC](https://multiqc.info/docs/#manual-installation) (Requires Python 3).

- [mk](https://9fans.github.io/plan9port/man/man1/mk.html "A successor for make.")



### Installing

Clone the repository (you should be running a unix-based OS). 

`git clone https://github.com/hreypar/fastq-quality-check.git`

Go into the directory and create a symbolic link called `data` of your FASTQ-containing directory. 


```
cd fastq-quality-check

ln -s /your/fastq_files/directory/ data

```

End with an example of getting some data out of the system or using it for a little demo


[comment]: <> (## Versioning)

[comment]: <> (We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).)


## Authors

[Helena Reyes Gopar](https://scholar.google.com/citations?user=yprpaRoAAAAJ&hl=en) - hreypar@gmail.com


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

