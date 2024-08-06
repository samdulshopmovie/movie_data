# Daily box office - parquet data

### Data Source api
- [korean film council](https://www.kobis.or.kr/kobisopenapi/homepg/apiservice/searchServiceInfo.do)

### Data Structure and Partitions
```
tree -L 4 | head -n 20
.
├── README.md
├── data
│   └── extract
│       ├── load_dt=20150101
│       │   ├── multiMovieYn=N
│       │   ├── multiMovieYn=Y
│       │   ├── repNationCd=F
│       │   └── repNationCd=K
│       ├── load_dt=20150102
│       │   ├── multiMovieYn=N
│       │   ├── multiMovieYn=Y
│       │   ├── repNationCd=F
│       │   └── repNationCd=K
.
.
.
│       ├── load_dt=20151230
│       │   ├── multiMovieYn=N
│       │   ├── multiMovieYn=Y
│       │   ├── repNationCd=F
│       │   └── repNationCd=K
│       └── load_dt=20151231
│           ├── multiMovieYn=N
│           ├── multiMovieYn=Y
│           ├── repNationCd=F
│           └── repNationCd=K
```

###
```
$ uname -a
Linux LAPTOP-RALEOMTL 5.15.153.1-microsoft-standard-WSL2 #1 SMP Fri Mar 29 23:14:13 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux

$ cat /etc/issue
Ubuntu 22.04.3 LTS \n \l

$ python -V
Python 3.11.9

$ python3 -m venv localenv
$ source localenv/bin/activate

(localenv) $which python
......../movie_data/localenv/bin/python

# pip freeze > requirements.txt
(localenv) $ pip install -r requirements.txt

(localenv) $ cd notebook
(localenv) $ jupyter notebook 
.
.
.
To access the server, open this file in a browser:
        file:///home/diginori/.local/share/jupyter/runtime/jpserver-1157566-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/tree?token=0e5bddd3f0c8ac5e94a206a60382ee89e0e22280194547a9
        http://127.0.0.1:8888/tree?token=0e5bddd3f0c8ac5e94a206a60382ee89e0e22280194547a9

```
