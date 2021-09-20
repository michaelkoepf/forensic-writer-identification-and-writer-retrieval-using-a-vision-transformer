echo "==============================================================================="
echo "= CVL w/ enrollment"
echo "==============================================================================="
echo "=== CVL w/ enrollment -- classification-based ==="
./eval.py --classification --skip-retrieval --soft-top-k 1 2 3 4 5 6 7 8 9 10 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --num-workers 4 -- cvl-1-1_with-enrollment_pages cvl-1-1_with-enrollment_pages
echo "=== CVL w/ enrollment -- retrieval-based ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_with-enrollment_pages cvl-1-1-test_retrieval-based-subset_with-enrollment_pages
echo "==============================================================================="
echo "= CVL w/o enrollment"
echo "==============================================================================="
echo "=== CVL w/o enrollment, training set: CVL w/o enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 2 --saved-model ./saved_models/cvl-1-1_without-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-20_bsize-128_seed-29848/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_without-enrollment_pages cvl-1-1_without-enrollment_pages
echo "=== CVL w/o enrollment, training set: ICDAR 2013 ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 2 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages cvl-1-1_without-enrollment_pages
echo "==============================================================================="
echo "= ICDAR 2013"
echo "==============================================================================="
echo "-------------------------------------------------------------------------------"
echo "- ICDAR 2013 -- FULL"
echo "-------------------------------------------------------------------------------"
echo "=== ICDAR 2013 -- full, training set: ICDAR 2013 ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 2 3 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages icdar-2013_pages
echo "=== ICDAR 2013 -- full, training set: CVL w/ enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 2 3 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_with-enrollment_pages icdar-2013_pages
echo "=== ICDAR 2013 -- full, training set: CVL w/o enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 2 3 --saved-model ./saved_models/cvl-1-1_without-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-20_bsize-128_seed-29848/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_without-enrollment_pages icdar-2013_pages
echo "-------------------------------------------------------------------------------"
echo "- ICDAR 2013 -- LATIN SUBSET"
echo "-------------------------------------------------------------------------------"
echo "=== ICDAR 2013 -- latin subset, training set: ICDAR 2013 ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages icdar-2013-test_latin-subset_pages
echo "=== ICDAR 2013 -- latin subset, training set: CVL w/ enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_with-enrollment_pages icdar-2013-test_latin-subset_pages
echo "=== ICDAR 2013 -- latin subset, training set: CVL w/o enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_without-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-20_bsize-128_seed-29848/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_without-enrollment_pages icdar-2013-test_latin-subset_pages
echo "-------------------------------------------------------------------------------"
echo "- ICDAR 2013 -- GREEK SUBSET"
echo "-------------------------------------------------------------------------------"
echo "=== ICDAR 2013 -- greek subset, training set: ICDAR 2013 ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages icdar-2013-test_greek-subset_pages
echo "=== ICDAR 2013 -- greek subset, training set: CVL w/ enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_with-enrollment_pages icdar-2013-test_greek-subset_pages
echo "=== ICDAR 2013 -- greek subset, training set: CVL w/o enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_without-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-20_bsize-128_seed-29848/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_without-enrollment_pages icdar-2013-test_greek-subset_pages
echo "==============================================================================="
echo "= WRITE"
echo "==============================================================================="
echo "-------------------------------------------------------------------------------"
echo "- WRITE -- FULL"
echo "-------------------------------------------------------------------------------"
echo "=== WRITE -- full, training set: ICDAR 2013 ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages write_pages
echo "=== WRITE -- full, training set: CVL w/ enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_with-enrollment_pages write_pages
echo "=== WRITE -- full, training set: CVL w/o enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_without-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-20_bsize-128_seed-29848/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_without-enrollment_pages write_pages
echo "-------------------------------------------------------------------------------"
echo "- WRITE -- SCRIPT SUBSET"
echo "-------------------------------------------------------------------------------"
echo "=== WRITE -- script subset, training set: ICDAR 2013 ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages write_script-subset_pages
echo "=== WRITE -- script subset, training set: CVL w/ enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_with-enrollment_pages write_script-subset_pages
echo "=== WRITE -- script subset, training set: CVL w/o enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_without-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-20_bsize-128_seed-29848/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_without-enrollment_pages write_script-subset_pages
echo "-------------------------------------------------------------------------------"
echo "- WRITE -- BLOCK LETTERS/BLOCK CAPITALS SUBSET"
echo "-------------------------------------------------------------------------------"
echo "=== WRITE -- block letters/block capitals subset, training set: ICDAR 2013 ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/icdar-2013_pages/vit-lite-7-4_optim-adamw_lr-0.005_wup-20_bsize-512_seed-417/epoch_72.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- icdar-2013_pages write_block-letters-block-capitals-subset_pages
echo "=== WRITE -- block letters/block capitals subset, training set: CVL w/ enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_with-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-10_bsize-512_seed-58720/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_with-enrollment_pages write_block-letters-block-capitals-subset_pages
echo "=== WRITE -- block letters/block capitals subset, training set: CVL w/o enrollment ==="
./eval.py --soft-top-k 1 2 3 4 5 6 7 8 9 10 --hard-top-k 1 --saved-model ./saved_models/cvl-1-1_without-enrollment_pages/vit-lite-7-4_optim-adamw_lr-0.0005_wup-20_bsize-128_seed-29848/epoch_47.pth --metrics canberra chebyshev cityblock correlation cosine euclidean seuclidean sqeuclidean --num-workers 4 -- cvl-1-1_without-enrollment_pages write_block-letters-block-capitals-subset_pages
