# `dataset_splits`
This folder contains different dataset splits for our considered writer identification and writer retrieval datasets. There is a 1:n relationship between datasets and dataset splits, i.e. one dataset can have different splits (see also "Predefined Splits" below).

## File Format
The used format is `CSV`: `;` is used as separator and *no* header is used (i.e. the first line is already part of the payload).

To ensure flexibility, the format is as follows:   
`<unique writer id>;<page/document id>;<path to the input file>;[train|val|test];<target directory>`

- `<path to the input file>` is only the part of the path from `data/raw/<dataset>` onwards.
- `<target directory>` is only the part of the path from `data/preprocessed/<dataset split name>/[train|val|test]` onwards. If you use the provided `train.py` and `eval.py`, for `train` and `val` this value has to be set to the `<unique writer id>`, for `test` it has to be set to `<unique writer id>/<page/document id>`.

By following this format, you can create your own dataset splits. Currently supported and tested is only page-level input (i.e. one input file per writer id-page/document id combination).

For examples following this file format, you may have a look at the already predefined dataset splits included in this directory. For further information on the directory structure of `data` see `data/README.md`.


## Predefined Splits

We offer the following predefined splits:

| File | Description |   Max. *k* (hard criterion/retrieval-based) |   
| ------------- |-------------|-------------:|    
| `cvl-1-1_with-enrollment_pages.csv`      | Split of the `CVL` database for writer recognition *with enrollment* as proposed by He and Schomaker (page with ids 1, 2, 3 of each writer[\*] are used for training, the rest for testing). Additionally, we use the page with id 2 of each writer from their defined training set for validation. | 0 |   
| `cvl-1-1_with-enrollment_experiment_pages.csv`      | Subset of `cvl-1-1_with-enrollment_pages.csv` (first 50 writers). Used for model selection only. | 1 |   
| `cvl-1-1-test_retrieval-based-subset_with-enrollment_pages.csv`      | Contains only the test set of `cvl-1-1_with-enrollment_pages.csv` with exclusion of writer id 431. The exclusion is necessary for retrieval-based evaluation, since this writer has only one document in the test set. | 1 |   
| `cvl-1-1_without-enrollment_pages.csv`      | Original split of the `CVL` database. Page with id 2 of each writer in the training set is used for validation. | 2[\*\*] |   
| `icdar-2013_pages.csv`      | `ICDAR 2013` dataset. The pages used for validation are interleaved, with page 1, 3, 2, 4, 1, 3, 2, 4, ... being used for validation. This ensures a balanced validation set of english and greek texts, respectively.  | 3 |   
| `icdar-2013-test_greek-subset_pages.csv`      | Contains only the test set with greek pages (pages with id 3 and 4) of `icdar-2013_pages.csv`.  | 1 |   
| `icdar-2013-test_latin-subset_pages.csv`      | Contains only the test set with latin pages (pages with id 1 and 2) of `icdar-2013_pages.csv`.  | 1 |   
| `write_pages.csv`[\*\*\*]      | `WRITE` dataset with all pages being used for testing. | 1 |   
| `write_script-subset_pages.csv`[\*\*\*]      | Contains only regions with handwriting written in script. Writer with id 10 was excluded, since there is only image for this writer. | 1 |   
| `write_block-letters-block-capitals-subset_pages.csv`[\*\*\*]      | Contains only regions with handwriting written in block letters or block capitals. Writer with id 4 and 9 were excluded, since they have only have one image each. | 1 |   

[\*] writer with id 431 only wrote the text of page 1 and 2 and left page 3 blank   
[\*\*] due two writer with id 431, who left two pages blank  
[\*\*\*] not publicly available


## References

```bibtex
@inproceedings{louloudis_icdar_2013,
	address = {Washington, DC, USA},
	title = {{ICDAR} 2013 {Competition} on {Writer} {Identification}},
	isbn = {978-0-7695-4999-6},
	url = {http://ieeexplore.ieee.org/document/6628843/},
	doi = {10.1109/ICDAR.2013.282},
	urldate = {2021-05-09},
	booktitle = {2013 12th {International} {Conference} on {Document} {Analysis} and {Recognition}},
	publisher = {IEEE},
	author = {Louloudis, G. and Gatos, B. and Stamatopoulos, N. and Papandreou, A.},
	month = aug,
	year = {2013},
	keywords = {dataset},
	pages = {1397--1401},
}
```

```bibtex
@inproceedings{kleber_cvl-database_2013,
	address = {Washington, DC, USA},
	title = {{CVL}-{DataBase}: {An} {Off}-{Line} {Database} for {Writer} {Retrieval}, {Writer} {Identification} and {Word} {Spotting}},
	isbn = {978-0-7695-4999-6},
	shorttitle = {{CVL}-{DataBase}},
	url = {http://ieeexplore.ieee.org/document/6628682/},
	doi = {10.1109/ICDAR.2013.117},
	urldate = {2021-05-08},
	booktitle = {2013 12th {International} {Conference} on {Document} {Analysis} and {Recognition}},
	publisher = {IEEE},
	author = {Kleber, Florian and Fiel, Stefan and Diem, Markus and Sablatnig, Robert},
	month = aug,
	year = {2013},
	keywords = {dataset},
	pages = {560--564}
}
```

```bibtex
@misc{kleber_cvl_2018,
	title = {{CVL} {Database} - {An} {Off}-line {Database} for {Writer} {Retrieval}, {Writer} {Identification} and {Word} {Spotting}},
	copyright = {Creative Commons Attribution-NonCommercial 4.0, Open Access},
	url = {https://zenodo.org/record/1492267},
	urldate = {2021-08-29},
	publisher = {Zenodo},
	author = {Kleber, Florian and Fiel, Stefan and Diem, Markus and Sablatnig, Robert},
	month = nov,
	year = {2018},
	doi = {10.5281/ZENODO.1492267},
	keywords = {writer identification, writer retrieval, word spotting},
}
```

```bibtex
@article{he_fragnet_2020,
	title = {{FragNet}: {Writer} {Identification} {Using} {Deep} {Fragment} {Networks}},
	volume = {15},
	issn = {1556-6013, 1556-6021},
	shorttitle = {{FragNet}},
	url = {https://ieeexplore.ieee.org/document/9040654/},
	doi = {10.1109/TIFS.2020.2981236},
	urldate = {2021-08-24},
	journal = {IEEE Transactions on Information Forensics and Security},
	author = {He, Sheng and Schomaker, Lambert},
	year = {2020},
	pages = {3013--3022},
}
```

```bibtex
@article{he_gr-rnn_2021,
	title = {{GR}-{RNN}: {Global}-context residual recurrent neural networks for writer identification},
	volume = {117},
	issn = {00313203},
	shorttitle = {{GR}-{RNN}},
	url = {https://linkinghub.elsevier.com/retrieve/pii/S003132032100162X},
	doi = {10.1016/j.patcog.2021.107975},
	language = {en},
	urldate = {2021-08-19},
	journal = {Pattern Recognition},
	author = {He, Sheng and Schomaker, Lambert},
	month = sep,
	year = {2021},
	pages = {107975},
}
```
