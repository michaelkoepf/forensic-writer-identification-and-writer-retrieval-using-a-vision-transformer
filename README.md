# 📄️ Forensic Writer Identification and Writer Retrieval Using a Vision Transformer
Repository of "Forensic Writer Identification and Writer Retrieval Using a Vision Transformer"

## Overview
In this work, we present a novel method for writer identification and writer retrieval using a Vision Transformer.

### Results on publicly available datasets
For details on the dataset splits/datasets, see `./dataset_splits/README.md`

#### `CVL w/ enrollment`
| Top k | Accuracy |
|-------|----------|
| 1 | 99.0 |
| 2 | 99.3 |
| 3 | 99.6 |
| 5 | 99.9 |
| 10 | 99.9 |

#### `CVL w/o enrollment`
| Measure | Accuracy |
|-------|----------|
| Top 1 | 97.4 |
| *Soft top k* |  |
| 2 | 98.0 |
| 3 | 98.2 |
| 5 | 98.4 |
| 10 | 98.7 |
| *Hard top k* |  |
| 2 | 96.5 |
| *mAP* | 92.8 |

#### `ICDAR 2013`
| Measure | Accuracy |
|-------|----------|
| Top 1 | 97.0 |
| *Soft top k* |  |
| 2 | 98.0 |
| 3 | 98.3 |
| 5 | 98.6 |
| 10 | 99.0 |
| *Hard top k* |  |
| 2 | 86.3 |
| 3 | 78.3 |
| *mAP* | 84.4 |

## Setup/Installation Instructions
Prerequisites:
- `python3 (>= 3.6)`
- `pip3` (recommendation: upgrade to the latest version using `pip3 install --upgrade pip`)

Please also note, that this repository uses <a href="https://git-lfs.github.com/">`git lfs`</a> for the saved models.

The code in this repository was tested with the following system configurations on `Linux`-based systems:
1. `CUDA 11.0.2`, `Python 3.6`
2. `CUDA 11.1`, `Python 3.8`


### Virtual Environment (`venv`) Setup and Dependency Installation
*Note: The following instructions create a basic setup to get up and running. For further information on virtual environments, please refer the <a href="https://docs.python.org/3/library/venv.html">official documentation</a>.*
1. Set up a virtual environment: ```python3 -m venv ./venv```
2. Activate the created virtual environment: ```source venv/bin/activate```
3. Depending on the platform, different versions of `PyTorch` are available. Therefore, choose an appropriate `constraints` file (`-c` option) for installing the dependencies:
   - `CUDA 10.2`: 
   ```shell
   pip3 install -r requirements/requirements.txt -c requirements/constraints-cuda102.txt
   ```
   
   - `CUDA 11.1`: 
   ```shell
   pip3 install -r requirements/requirements.txt -c requirements/constraints-cuda111.txt
   ```
   - `CPU`:
   ```shell
   pip3 install -r requirements/requirements.txt -c requirements/constraints-cpu.txt
   ```

   If non of the listed CUDA version matches your installed version, try `CUDA 10.2` first.   

   In case the installation of the dependencies fails, try to add the option `--no-cache-dir`. For further information, please consult the official <a href="https://pytorch.org/get-started/locally/">`PyTorch` documentation</a>.

### IDE/OS Setup
When using an IDE (e.g. `PyCharm`, `IntelliJ`) or desktop environment with indexing functionality, make sure to exclude `data` from indexing *before* preprocessing any files. For `GNOME`, the folder is automatically excluded (a `.trackerignore` file is already placed in `data`). This also applies when you are using a custom directory for the data.

## File Organisation
| File/Directory | Description |
| ------------- |-------------|
| `data`      | Default folder for writer identification/writer retrieval datasets (archives and also resulting files from preprocessing) | 
| `dataset_splits`      | CSV files containing different splits of writer identification/writer retrieval datasets. You may also add your own splits here | 
| `experiments`      | Jupyter Notebooks, results (`TensorBoard` format) and saved models of experiments conducted for the purpose of model selection|
| `requirements` | Requirement and constraint files for dependency installation|
| `runs` | Results of hyperparameter search (`TensorBoard` format) |
| `saved_models` | Saved models of hyperparameter search (best performing models only due to file size) |
| `src` | Custom modules for preprocessing, training and evaluation |
| `train.py` | CLI tool for training a model on a dataset |
| `eval.py` | CLI tool for evaluating datasets with a trained model |
| `hyperparam_search.md` | Configurations used for hyperparameter search/model training |
| `eval-all.sh` | `bash` script, that runs all our considered evaluation procedures |
| `eval_result.py` | Results of `eval-all.sh` in a `Python` dict |
| `.gitattributes` | Configuration for `git lfs` to store saved models (`.pth` files) |

For further information, refer to the `README.md` files in the respective sub-directories.

## Visualisation of Results
`runs` and `experiments/runs` contain the results in `TensorBoard` format. You can visualise them by invoking ```tensorboard --logdir ./runs``` and ```tensorboard --logdir ./experiments/runs```, respectively, in the root directory of this repository.

## Training and Evaluating a Model
For training with different parameters or on a new dataset, `train.py` can be used. Invoke `./train.py -h` for more information. Examples for training configurations can be found in `hyperparam_search.md`.
   
For evaluating a dataset with a trained model, use `eval.py`. Invoke `./eval.py -h` for more information.

Examples for evaluation:
- Classification-based evaluation only for the `CVL w/ enrollment` split using the corresponding trained model:   
```shell
./eval.py --classification --skip-retrieval --soft-top-k 1 2 3 4 5 6 7 8 9 10 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --num-workers 4 -- cvl-1-1_with-enrollment_pages cvl-1-1_with-enrollment_pages
``` 

- Retrieval-based evaluation for the `CVL w/ enrollment` split using the corresponding trained model and all possible distance metrics:
```shell
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --num-workers 4 -- cvl-1-1_with-enrollment_pages cvl-1-1-test_retrieval-based-subset_with-enrollment_pages
```

- Retrieval-based evaluation for the `CVL w/o enrollment` split using the trained model of `ICDAR 2013` and all possible distance metrics:
```shell
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 2 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages cvl-1-1_without-enrollment_pages
```

See also `eval-all.sh` for more examples.

## Using New Datasets
If you want to use a new dataset, refer to `dataset_splits/README.md` and `src/README.md`.

## Acknowledgements
The computational results presented have been achieved in part using the <a href="https://vsc.ac.at/home/">Vienna Scientific Cluster (VSC)</a>.

## References/Recommended Reading
Vision Transformer (ViT) model variant used in this work (ViT-Lite-7/4)
```bibtex
@article{hassani_escaping_2021,
	title = {Escaping the {Big} {Data} {Paradigm} with {Compact} {Transformers}},
	url = {http://arxiv.org/abs/2104.05704},
	abstract = {With the rise of Transformers as the standard for language processing, and their advancements in computer vision, along with their unprecedented size and amounts of training data, many have come to believe that they are not suitable for small sets of data. This trend leads to great concerns, including but not limited to: limited availability of data in certain scientific domains and the exclusion of those with limited resource from research in the field. In this paper, we dispel the myth that transformers are "data hungry" and therefore can only be applied to large sets of data. We show for the first time that with the right size and tokenization, transformers can perform head-to-head with state-of-the-art CNNs on small datasets. Our model eliminates the requirement for class token and positional embeddings through a novel sequence pooling strategy and the use of convolutions. We show that compared to CNNs, our compact transformers have fewer parameters and MACs, while obtaining similar accuracies. Our method is flexible in terms of model size, and can have as little as 0.28M parameters and achieve reasonable results. It can reach an accuracy of 95.29 \% when training from scratch on CIFAR-10, which is comparable with modern CNN based approaches, and a significant improvement over previous Transformer based models. Our simple and compact design democratizes transformers by making them accessible to those equipped with basic computing resources and/or dealing with important small datasets. Our method works on larger datasets, such as ImageNet (80.28\% accuracy with 29\% parameters of ViT), and NLP tasks as well. Our code and pre-trained models are publicly available at https://github.com/SHI-Labs/Compact-Transformers.},
	urldate = {2021-07-19},
	journal = {arXiv:2104.05704 [cs]},
	author = {Hassani, Ali and Walton, Steven and Shah, Nikhil and Abuduweili, Abulikemu and Li, Jiachen and Shi, Humphrey},
	month = jun,
	year = {2021},
	note = {arXiv: 2104.05704},
}
```

Original Vision Transformer (ViT) model variants (ViT-B/L/H)
```bibtex
@article{dosovitskiy_image_2020,
	title = {An {Image} is {Worth} 16x16 {Words}: {Transformers} for {Image} {Recognition} at {Scale}},
	shorttitle = {An {Image} is {Worth} 16x16 {Words}},
	url = {http://arxiv.org/abs/2010.11929},
	abstract = {While the Transformer architecture has become the de-facto standard for natural language processing tasks, its applications to computer vision remain limited. In vision, attention is either applied in conjunction with convolutional networks, or used to replace certain components of convolutional networks while keeping their overall structure in place. We show that this reliance on CNNs is not necessary and a pure transformer applied directly to sequences of image patches can perform very well on image classification tasks. When pre-trained on large amounts of data and transferred to multiple mid-sized or small image recognition benchmarks (ImageNet, CIFAR-100, VTAB, etc.), Vision Transformer (ViT) attains excellent results compared to state-of-the-art convolutional networks while requiring substantially fewer computational resources to train.},
	urldate = {2021-04-27},
	journal = {arXiv:2010.11929 [cs]},
	author = {Dosovitskiy, Alexey and Beyer, Lucas and Kolesnikov, Alexander and Weissenborn, Dirk and Zhai, Xiaohua and Unterthiner, Thomas and Dehghani, Mostafa and Minderer, Matthias and Heigold, Georg and Gelly, Sylvain and Uszkoreit, Jakob and Houlsby, Neil},
	month = oct,
	year = {2020},
	note = {arXiv: 2010.11929},
}
```