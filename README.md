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
