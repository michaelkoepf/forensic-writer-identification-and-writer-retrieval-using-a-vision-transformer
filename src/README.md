# `src`
Contains various helper classes and functions.

## File Organisation
| File | Description |
| ------------- |-------------|
| `datasets.py` | Base and sub-classes representing writer identification and writer retrieval datasets. The base-class `WriterRecognitionDataset` can be extended to use new datasets. |
| `errors.py` | Custom error sub-classes |
| `lr_schedulers.py` | Custom learning rate schedulers for model training |
| `model_variants.py` | Used model variants |
| `preprocessing.py` | Base and pre-defined sub-classes used for preprocessing instances of the classes in `datasets.py`. Base classes can be extended to implement different preprocessing procedures. Furthermore, `defaults` contains predefined datasets incl. preprocessing steps used by the `train.py` and `eval.py` CLI tools, but also can be used as independent modules. |
| `pytorch_utils.py` | Functions and classes related to training and evaluation of datasets. These classes are used by the `train.py` and `eval.py` CLI tools, but also can be used as independent modules. |

For further information, have a look at the documentation in the source code of the respective files.