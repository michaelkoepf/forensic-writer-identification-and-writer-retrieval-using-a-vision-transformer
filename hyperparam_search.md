# Hyperparameter search
Here, all used configurations for the hyperparamter search/model training are listed. The seeds (`417`, `29848`, `58720`) were generated with <a href="https://www.random.org/">random.org</a> in a range from 0 to 2^(16-1).

## `CVL w/ enrollment`
```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_with-enrollment_pages
```

Validation of the best performing configuration
```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 --seed 58720 cvl-1-1_with-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 60 --num-epochs-early-stop 10 --num-workers 4 --seed 29848 cvl-1-1_with-enrollment_pages
```

## `CVL w/o enrollment`
```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 cvl-1-1_without-enrollment_pages
```

Validation of the best performing configuration
```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 --seed 58720 cvl-1-1_without-enrollment_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 --seed 29848 cvl-1-1_without-enrollment_pages
```

## `ICDAR 2013`
```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 5 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 5 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 10 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 20 --batch-size 128 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.0005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.00005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 icdar-2013_pages
```

Validation of the best performing configuration
```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 --seed 58720 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 10 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 --seed 29848 icdar-2013_pages
```

As the validation of the best performing configuration failed (run with seed `58720` performed significantly worse), we took the second best performing model and validated it
```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 --seed 58720 icdar-2013_pages
```

```shell
./train.py --model vit-lite-7-4  --optim adamw --lr 0.005 --num-epochs-warmup 20 --batch-size 512 --num-epochs 200 --num-epochs-early-stop 10 --num-workers 4 --seed 29848 icdar-2013_pages
```
