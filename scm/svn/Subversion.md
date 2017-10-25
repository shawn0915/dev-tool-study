# Apache Subversion


## Install

- [bitinami_subversion_install](bitinami_subversion_install.txt)

## Config

- [hook_pre_commmit](hook_pre_commmit.txt)

## Command

### svnadmin

```bash
svnadmin dump C:\Repositories\shawnyan_data > D:\shawnyan_data_fully_bak.150518.dump
svnadmin load /home/admin/subversion-1.8.16-0/svnrepository/shawnyan_data < /data/shawnyan_data_v1090.dump
```

### svn

```bash
svn co --depth=empty http://svn.shawnyan.com:3670/shawnyan_data/code_0609_1131_v3455
svn switch --relocate http://svn.shawnyan.com:3670/shawnyan_data/code http://svn.shawnyan.com:3670/shawnyan_data/code_new
```

## REF

- [subversion.apache.org](http://subversion.apache.org/)
- [VisualSVN](https://www.visualsvn.com/)
- [bitnami-subversion](https://bitnami.com/stack/subversion)
- [TortoiseSVN](https://tortoisesvn.net/)