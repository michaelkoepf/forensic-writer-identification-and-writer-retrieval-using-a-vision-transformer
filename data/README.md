# `data`
Default directory for datasets.
   
If you do not want to make use of the automatic downloading capabilities provided by sub-classes of `src.datasets.WriterRecognitionDataset` or the used dataset is not available on the internet (e.g. in our case the `WRITE` dataset), just place the archive of the dataset directly in this directory. 

## Directory Organisation

| Directory | Description |
| ------------- |-------------|
| `raw` | Contains the unprocessed files (i.e. the data extracted from a dataset's archive) |
| `preprocessed` | Contains the preprocessed files, organised into subdirectories. The name of a subdirectory corresponds to the name of the respective `CSV` file containing the split (see `dataset_splits`). Depending on the provided split, the sub-directories may contain `train`, `test` and `val` as further directories. |