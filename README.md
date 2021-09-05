# Intel Devcloud Install Scripts

Install boost first
```bash
git clone https://github.com/VCCA2021HPC/devcloud_installscripts
cd devcloud_installscripts
qsub -l nodes=1:ppn=2 -d . get_boost.sh
```
Once that is done, install Openbabel and idock, these can be done in parallel,
```bash
qsub -l nodes=1:ppn=2 -d . get_openbabel.sh
qsub -l nodes=1:ppn=2 -d . get_idock.sh
```
